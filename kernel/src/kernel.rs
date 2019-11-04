use crate::scheduler::Scheduler;
use crate::interrupt_manager::InterruptManager;
use crate::message_manager::MessageManager;
use crate::process::Process;
use crate::process_manager::{ProcessId, ProcessManager};
use crate::syscall_id;
use arch::StackFrame;
use core::slice::from_raw_parts;
use core::cell::RefCell;
use embedded_hal::serial::Write;
use log::dhprintln;
use core::fmt::{Write as CoreWrite};
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

impl<'a, S, W> Kernel<'a, S, W> where S: Scheduler<'a>, W: Write<char> {
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
        unsafe { asm!("cpsid i" ::: "memory" : "volatile"); }
        let interrupt_manager = &mut self.interrupt_manager;
        let process_manager = &mut self.process_manager;
        loop {
            let mut sched = self.scheduler.borrow_mut();
            let mut serial = self.serial.borrow_mut();
            let mut message_manager = self.message_manager.borrow_mut();
            //let mut process_manager = self.process_manager.borrow_mut();
            let current_id: Option<&mut ProcessId> = sched.get_current_proc();

            match current_id {
                Some(item) => {
                    dhprintln!("executing process: {}", item.0);
                    let mut syscall: Option<*const u32> = None;
                    process_manager.get_mut(item).map(|process| {
                        dhprintln!("process start sp: {:x}", process.sp as usize);
                        let base_frame = unsafe { StackFrame::from_ptr(process.sp as *const u32) };
                        dhprintln!("process start lr: {:x}", base_frame.lr);
                        dhprintln!("process start pc: {:x}", base_frame.return_addr);
                        process.execute();
                        dhprintln!("process stop sp: {:8x}", process.sp as usize);
                        let base_frame = unsafe { StackFrame::from_ptr(process.sp as *const u32) };
                        dhprintln!("process stop lr: {:x}", base_frame.lr);
                        dhprintln!("process stop pc: {:x}", base_frame.return_addr);
                        unsafe {
                            let sp: u32;
                            asm!("mov $0, sp":"=r"(sp):::"volatile");
                            dhprintln!("sp: {:x}", sp);
                            let lr: u32;
                            asm!("mov $0, lr":"=r"(lr):::"volatile");
                            dhprintln!("lr: {:x}", lr);
                        }
                        unsafe {
                            if SYSCALL_FIRED > 0 {
                                syscall.replace(process.sp as *const u32);
                                SYSCALL_FIRED = 0;
                            }
                        }
                    });

                    match syscall {
                        Some(sp) => {
                            dhprintln!("syscall sp: {:x}", sp as usize);
                            let base_frame = unsafe { StackFrame::from_ptr_mut(sp) };
                            let svc_id = base_frame.r0;
                            match svc_id {
                                syscall_id::PRINT => {
                                    let arg2 = base_frame.r2 as usize;
                                    let arg1 = unsafe { from_raw_parts(base_frame.r1 as *const u8, arg2) };

                                    for i in 0..arg2 {
                                        serial.write(arg1[i] as char);
                                    }
                                },
                                syscall_id::YIELD => {
                                    unsafe { SHOULD_DISPATCH = 1 };
                                },
                                syscall_id::WAIT_IRQ => {
                                    let arg1 = base_frame.r1;
                                    interrupt_manager.push_wait(arg1, sched.pop_current_proc().unwrap());
                                },
                                syscall_id::WAIT_SYSTICK => {
                                    let current = sched.pop_current_proc().unwrap();
                                    sched.push_wait(current);
                                },
                                syscall_id::DORMANT => {
                                    sched.pop_current_proc().unwrap();
                                },
                                syscall_id::SEND_MESSAGE => {
                                    let arg1 = base_frame.r1;
                                    let arg2 = base_frame.r2;
                                    let target = process_manager.borrow_mut(&ProcessId(arg1));
                                    if target.is_none() {
                                        base_frame.r0 = 0;
                                    } else {
                                        let result = message_manager.send_message(target.unwrap(), arg2);
                                        base_frame.r0 = result.clone() as u32;
                                    }
                                },
                                syscall_id::RECEIVE_MESSAGE => {
                                    let result = message_manager.receive_message(process_manager.borrow_mut(item).unwrap());
                                    if result.is_none() {
                                        base_frame.r0 = 0;
                                    } else {
                                        base_frame.r0 = 1;
                                        base_frame.r1 = result.unwrap().clone();
                                    }
                                },
                                _ => {
                                    // TODO: error handling
                                    panic!("unknown svc");
                                }
                            }
                        },
                        None => {}
                    }
                },
                None => {
                    dhprintln!("sleeping");
                    unsafe {
                        asm!("
                            cpsie i
                            wfi
                            cpsid i
                        ":::"memory":"volatile");
                    }
                }
            }

            
            let mut released_list = interrupt_manager.check_pending();
            sched.resume_list(&mut released_list);

            unsafe { 
                if SHOULD_DISPATCH > 0 {
                    sched.resume_waiting();
                    sched.schedule_next();
                    SHOULD_DISPATCH = 0;
                }
            }
        }
    }
}

#[no_mangle]
pub static mut SHOULD_DISPATCH: u32 = 0;

#[no_mangle]
pub unsafe extern "C" fn SysTick() {
    dhprintln!("systick");
    asm!(
        "
        movw lr, #0xfff9
        movt lr, #0xffff
      from_kernel:
        ldr r0, =SHOULD_DISPATCH
        mov r1, #1
        str r1, [r0, #0]
        "
    ::::"volatile");
}