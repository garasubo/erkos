use crate::scheduler::{Scheduler, ExecResult};
use crate::interrupt_manager::InterruptManager;
use core::slice::from_raw_parts;
use core::cell::RefCell;
use device::nvic::Nvic;
use device::serial::{Usart, Serial};
use embedded_hal::serial::Write;
use rt::SYSCALL_FIRED;

pub struct Kernel<S: Sized> {
    scheduler: RefCell<S>,
    interrupt_manager: InterruptManager,
    serial: RefCell<Serial<Usart>>,
}

impl<'a, S> Kernel<S> where S: Scheduler<'a> + Sized {
    pub fn create(scheduler: S, serial: Serial<Usart>, interrupt_manager: InterruptManager) -> Kernel<S> {
        Kernel {
            scheduler: RefCell::new(scheduler),
            serial: RefCell::new(serial),
            interrupt_manager,
        }
    }

    pub fn run(&mut self) -> ! {
        unsafe { asm!("cpsid i" ::: "memory" : "volatile"); }
        loop {
            let mut sched = self.scheduler.borrow_mut();
            let mut serial = self.serial.borrow_mut();
            let result = sched.exec_current_proc(|process| {
                unsafe { asm!("cpsie i" ::: "memory" : "volatile"); }
                process.execute();
                unsafe { asm!("cpsid i" ::: "memory" : "volatile"); }
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
            });

            match result {
                ExecResult::Nothing => unsafe { asm!("wfi"::::"volatile"); },
                ExecResult::Executed => {},
            }

            unsafe { 
                if SYSTICK_FIRED > 0 {
                    sched.schedule_next();
                    SYSTICK_FIRED = 0;
                }
            }

            self.interrupt_manager.check_pending();

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