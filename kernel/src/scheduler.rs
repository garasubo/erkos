use core::option::Option;
use core::slice::from_raw_parts;
use device::serial::{Usart, Serial};
use device::nvic::Nvic;
use device::irqs::IrqId;
use embedded_hal::serial::{Read, Write};
use rt::SYSCALL_FIRED;

use crate::process::Process;

pub struct ProcessList<'a> {
    current: Process<'a>,
    next: Option<&'a mut ProcessList<'a>>,
}

impl<'a> ProcessList<'a> {
    pub fn create(process: Process<'a>) -> ProcessList<'a> {
        ProcessList {
            current: process,
            next: None,
        }
    }
}

pub struct Scheduler<'a> {
    procs: Option<&'a mut ProcessList<'a>>,
    last: Option<*mut ProcessList<'a>>,
}

impl<'a> Scheduler<'a> {
    pub fn create() -> Scheduler<'a> {
        Scheduler {
            procs: None,
            last: None,
        }
    }

    pub fn push(&mut self, proc: &'a mut ProcessList<'a>) {
        if self.last.is_none() {
            let proc_ptr = proc as *mut ProcessList;
            self.procs.replace(proc);
            self.last.replace(proc_ptr);
        } else {
            let last_ptr = self.last.unwrap();
            let proc_ptr = proc as *mut ProcessList;
            self.last.replace(proc_ptr);
            unsafe { (*last_ptr).next.replace(proc); }
        }
    }

    pub fn run(&mut self, serial: &mut Serial<Usart>, nvic: &Nvic) {
        while self.procs.is_none() {
            unsafe { asm!("wfi"::::"volatile"); }
        }


        match self.procs.iter_mut().next() {
            Some(current_item) => {

                let process = &mut (current_item.current);
                process.execute();
                unsafe {
                    if SYSCALL_FIRED > 0 {
                        let base_frame = from_raw_parts(process.sp as *const u32, 8);
                        let svc_id = base_frame[0];
                        if svc_id == 1 {
                            let arg2 = base_frame[2] as usize;
                            let arg1 = from_raw_parts(base_frame[1] as *const u8, arg2);

                            for i in 0..arg2 {
                                serial.write(arg1[i] as char);
                            }
                        } else if svc_id == 2 {
                            SYSTICK_FIRED = 1;
                        }
                        SYSCALL_FIRED = 0;
                    }

                }
            },
            None => {},
        }
        unsafe { 
            if SYSTICK_FIRED > 0 {
                asm!("cpsid i" ::: "memory" : "volatile");
                if self.procs.is_some() {
                    let current = self.procs.take().unwrap();
                    let next = current.next.take();
                    if next.is_some() {
                        let current_ptr = current as *mut ProcessList;
                        let mut last = self.last.take();
                        match last.iter().next() {
                            Some(item) => {
                                (*(*item)).next.replace(current);
                            },
                            None => {},
                        };
                        self.procs = next;
                        self.last.replace(current_ptr);
                    } else {
                        self.procs.replace(current);
                    }
                    
                }
                SYSTICK_FIRED = 0;
                asm!("cpsie i" ::: "memory" : "volatile");
            }
        }

        if nvic.is_pending(IrqId::USART3 as u32) {
            serial.read().map(|c| serial.write(c));
            nvic.clear_pending(IrqId::USART3 as u32);
            nvic.enable(IrqId::USART3 as u32);
        }

    }
}

#[no_mangle]
pub static mut SYSTICK_FIRED: u32 = 0;

#[no_mangle]
pub unsafe extern "C" fn SysTick() {
    asm!(
        "
        cmp lr, #0xfffffffd
        bne from_kernel

        mov r1, sp
        ldr r1, [r1, #4]
        stmia r1, {r4-r11}
        movw lr, #0xfff9
        movt lr, #0xffff
      from_kernel:
        ldr r0, =SYSTICK_FIRED
        mov r1, #1
        str r1, [r0, #0]
        "
    ::::"volatile");
}
