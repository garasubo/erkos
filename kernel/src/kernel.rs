use crate::scheduler::{Scheduler, ExecResult};
use crate::interrupt_manager::{IrqId, InterruptManager};
use crate::syscall_id;
use core::slice::from_raw_parts;
use core::cell::RefCell;
use device::serial::{Usart, Serial};
use embedded_hal::serial::Write;
use rt::SYSCALL_FIRED;

pub struct Kernel<'a, S: Sized> {
    scheduler: RefCell<S>,
    interrupt_manager: InterruptManager<'a>,
    serial: RefCell<Serial<Usart>>,
}

impl<'a, S> Kernel<'a, S> where S: Scheduler<'a> + Sized {
    pub fn create(scheduler: S, serial: Serial<Usart>, interrupt_manager: InterruptManager) -> Kernel<S> {
        Kernel {
            scheduler: RefCell::new(scheduler),
            serial: RefCell::new(serial),
            interrupt_manager,
        }
    }

    pub fn run(&'a mut self) -> ! {
        unsafe { asm!("cpsid i" ::: "memory" : "volatile"); }
        let interrupt_manager = &mut self.interrupt_manager;
        loop {
            let mut sched = self.scheduler.borrow_mut();
            let mut serial = self.serial.borrow_mut();
            let current = sched.get_current_proc();
            let mut syscall: Option<*const u32> = None;

            match current {
                Some(current_item) => {
                    let process = &mut (*(*current_item));
                    process.execute();
                    unsafe {
                        if SYSCALL_FIRED > 0 {
                            syscall.replace(process.sp as *const u32);
                            SYSCALL_FIRED = 0;
                        }
                    }
                },
                None => {
                    unsafe {
                        asm!("
                            cpsie i
                            wfi
                            cpsid i
                        ":::"memory":"volatile");
                    }
                }
            }

            match syscall {
                Some(sp) => {
                    let base_frame = unsafe { from_raw_parts(sp, 8) };
                    let svc_id = base_frame[0];
                    match svc_id {
                        syscall_id::PRINT => {
                            let arg2 = base_frame[2] as usize;
                            let arg1 = unsafe { from_raw_parts(base_frame[1] as *const u8, arg2) };

                            for i in 0..arg2 {
                                serial.write(arg1[i] as char);
                            }
                        },
                        syscall_id::YIELD => {
                            unsafe { SYSTICK_FIRED = 1 };
                        },
                        syscall_id::WAIT_IRQ => {
                            let arg1 = base_frame[1];
                            interrupt_manager.push_wait(IrqId::from_u32(arg1).unwrap(), sched.pop_current_proc().unwrap());
                        },
                        syscall_id::WAIT_SYSTICK => {
                            let current = sched.pop_current_proc().unwrap();
                            sched.push_wait(current);
                        },
                        syscall_id::DORMANT => {
                            sched.pop_current_proc().unwrap();
                        },
                        _ => {
                            // TODO: error handling
                            panic!("unknown svc");
                        }
                    }
                },
                None => {}
            }
            
            let mut released_list = interrupt_manager.check_pending();
            sched.resume_list(&mut released_list);

            unsafe { 
                if SYSTICK_FIRED > 0 {
                    sched.resume_waiting();
                    sched.schedule_next();
                    SYSTICK_FIRED = 0;
                }
            }
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