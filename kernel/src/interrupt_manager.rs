use crate::process_list::{ProcessList, ProcessListItem};
use arch::nvic::Nvic;
use core::mem;
use rt::Vector;

extern "C" {
    static mut IRQS: [Vector; 240];
}

struct InterruptHandler<'a> {
    id: u32,
    func: fn(),
    waiting: ProcessList<'a>,
}

// TODO: remove dependency on nvic
pub struct InterruptManager<'a> {
    nvic: Nvic,
    // TODO: variable length
    handlers: [InterruptHandler<'a>; 10],
    handler_count: usize,
}

impl<'a> InterruptManager<'a> {
    pub fn create(nvic: Nvic) -> InterruptManager<'a> {
        unsafe {
            InterruptManager {
                nvic,
                handlers: mem::uninitialized(),
                handler_count: 0,
            }
        }
    }

    pub fn register(&mut self, id: u32, func: fn()) {
        if self.handler_count >= 10 {
            panic!("limit exceed");
        }
        unsafe {
            IRQS[id as usize] = Vector {
                handler: DefaultIrqHandler,
            };
        }
        self.nvic.enable(id);
        self.handlers[self.handler_count] = InterruptHandler {
            id,
            func,
            waiting: ProcessList::new(),
        };
        self.handler_count += 1;
    }

    pub fn push_wait(&mut self, tar_id: u32, item: &'a mut ProcessListItem<'a>) {
        for i in 0..self.handler_count {
            let id = self.handlers[i].id;
            if id == tar_id {
                self.handlers[i].waiting.push(item);
                return;
            }
        }
        panic!("no handler");
    }

    pub fn check_pending(&mut self) -> ProcessList<'a> {
        let mut process_list = ProcessList::new();
        for i in 0..self.handler_count {
            let id = self.handlers[i].id as u32;
            if self.nvic.is_pending(id) {
                (self.handlers[i].func)();
                process_list.join(&mut self.handlers[i].waiting);
                self.nvic.clear_pending(id);
                self.nvic.enable(id);
            }
        }
        process_list
    }
}

pub unsafe extern "C" fn DefaultIrqHandler() {
    asm!(
        "
        movw lr, #0xfff9
        movt lr, #0xffff
      from_kernel:
        mrs r0, IPSR
        and r0, #0xff
        sub r0, #16

        lsrs r1, r0, #5

        movs r3, #1
        and r0, r0, #31
        lsl r0, r3, r0

        mov r2, #0xe180
        movt r2, #0xe000

        str r0, [r2, r1, lsl #2]
        "
    ::::"volatile");
}
