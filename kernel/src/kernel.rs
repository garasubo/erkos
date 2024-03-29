use crate::interrupt_manager::InterruptManager;
use crate::message_manager::MessageManager;
use crate::process::Process;
use crate::process_manager::{ProcessId, ProcessManager};
use crate::scheduler::Scheduler;
use crate::syscall_id;
use arch::StackFrame;
use core::cell::RefCell;
use core::slice::from_raw_parts;
use embedded_hal::serial::Write;
use log::dhprintln;
use rt::SYSCALL_FIRED;

pub struct Kernel<'a, S, W> {
    scheduler: RefCell<S>,
    interrupt_manager: InterruptManager<'a>,
    serial: RefCell<W>,
    process_manager: ProcessManager<'a, Process<'a>>,
    // process_manager: RefCell<ProcessManager<'a, Process<'a>>>,
    message_manager: RefCell<MessageManager<'a>>,
    //message_manager: MessageManager<'a>,
}

impl<'a, S, W> Kernel<'a, S, W>
where
    S: Scheduler<'a>,
    W: Write<char>,
{
    pub fn create(
        scheduler: S,
        serial: W,
        interrupt_manager: InterruptManager<'a>,
        process_manager: ProcessManager<'a, Process<'a>>,
        message_manager: MessageManager<'a>,
    ) -> Kernel<'a, S, W> {
        Kernel {
            scheduler: RefCell::new(scheduler),
            serial: RefCell::new(serial),
            interrupt_manager,
            process_manager,
            //process_manager: RefCell::new(process_manager),
            message_manager: RefCell::new(message_manager),
            //message_manager,
        }
    }

    pub fn run(&'a mut self) -> ! {
        unsafe {
            asm!("cpsid i", options(nomem, nostack));
        }
        let interrupt_manager = &mut self.interrupt_manager;
        let process_manager = &mut self.process_manager;
        loop {
            let mut sched = self.scheduler.borrow_mut();
            let mut serial = self.serial.borrow_mut();
            let mut message_manager = self.message_manager.borrow_mut();
            //let mut process_manager = self.process_manager.borrow_mut();
            let current_id: Option<&mut ProcessId> = sched.get_current_proc();
            let mut should_schedule_next = false;

            match current_id {
                Some(item) => {
                    let mut syscall: Option<*const u32> = None;
                    process_manager.get_mut(item).map(|process| {
                        process.execute();
                        unsafe {
                            if SYSCALL_FIRED > 0 {
                                syscall.replace(process.sp as *const u32);
                                SYSCALL_FIRED = 0;
                            }
                        }
                    });

                    match syscall {
                        Some(sp) => {
                            let base_frame = unsafe { StackFrame::from_ptr_mut(sp) };
                            let svc_id = base_frame.r0;
                            match svc_id {
                                syscall_id::PRINT => {
                                    let arg2 = base_frame.r2 as usize;
                                    let arg1 =
                                        unsafe { from_raw_parts(base_frame.r1 as *const u8, arg2) };

                                    for i in 0..arg2 {
                                        let _ = serial.write(arg1[i] as char);
                                    }
                                }
                                syscall_id::YIELD => {
                                    should_schedule_next = true;
                                }
                                syscall_id::WAIT_IRQ => {
                                    let arg1 = base_frame.r1;
                                    interrupt_manager
                                        .push_wait(arg1, sched.pop_current_proc().unwrap());
                                }
                                syscall_id::WAIT_SYSTICK => {
                                    let current = sched.pop_current_proc().unwrap();
                                    sched.push_wait(current);
                                }
                                syscall_id::DORMANT => {
                                    sched.pop_current_proc().unwrap();
                                }
                                syscall_id::SEND_MESSAGE => {
                                    let arg1 = base_frame.r1;
                                    let arg2 = base_frame.r2;
                                    let target = process_manager.borrow_mut(&ProcessId(arg1));
                                    if target.is_none() {
                                        base_frame.r0 = 0;
                                    } else {
                                        let result =
                                            message_manager.send_message(target.unwrap(), arg2);
                                        base_frame.r0 = result.clone() as u32;
                                    }
                                }
                                syscall_id::RECEIVE_MESSAGE => {
                                    let result = message_manager
                                        .receive_message(process_manager.borrow_mut(item).unwrap());
                                    if result.is_none() {
                                        base_frame.r0 = 0;
                                    } else {
                                        base_frame.r0 = 1;
                                        base_frame.r1 = result.unwrap().clone();
                                    }
                                }
                                _ => {
                                    // TODO: error handling
                                    panic!("unknown svc");
                                }
                            }
                        }
                        None => {}
                    }
                }
                None => {
                    dhprintln!("sleeping");
                    unsafe {
                        asm!(
                            "cpsie i",
                            "wfi",
                            "cpsid i",
                        );
                    }
                }
            }

            let mut released_list = interrupt_manager.check_pending();
            sched.resume_list(&mut released_list);

            if unsafe { SHOULD_DISPATCH } > 0 {
                sched.resume_waiting();
                sched.schedule_next();
                unsafe { SHOULD_DISPATCH = 0 };
            } else if should_schedule_next {
                sched.schedule_next();
            }
        }
    }
}

#[no_mangle]
pub static mut SHOULD_DISPATCH: u32 = 0;

#[no_mangle]
pub unsafe extern "C" fn SysTick() {
    asm!(
        "movw lr, #0xfff9",
        "movt lr, #0xffff",
        "ldr r0, =SHOULD_DISPATCH",
        "mov r1, #1",
        "str r1, [r0, #0]",
        options(nostack),
    );
}
