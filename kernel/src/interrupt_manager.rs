use device::nvic::Nvic;
use rt::Vector;
use device::IRQS;            
use core::mem;

struct InterruptHandler {
    id: IrqId,
    func: fn(),
}

// TODO: remove dependency on nvic
pub struct InterruptManager {
    nvic: Nvic,
    // TODO: variable length
    handlers: [InterruptHandler; 10],
    handler_count: usize,
}

impl InterruptManager {
    pub fn create(nvic: Nvic) -> InterruptManager {
        unsafe {
            InterruptManager {
                nvic,
                handlers: mem::uninitialized(),
                handler_count: 0,
            }
        }
    }

    pub fn register(&mut self, id: IrqId, func: fn()) {
        if self.handler_count >= 10 {
            panic!("limit exceed");
        }        
        unsafe { IRQS[id as usize] = Vector { handler: DefaultIrqHandler }; }
        self.nvic.enable(id as u32);
        self.handlers[self.handler_count] = InterruptHandler { id, func };
        self.handler_count += 1;
    }

    pub fn check_pending(&self) {
        for i in 0..self.handler_count {
            let id = self.handlers[i].id as u32;
            if self.nvic.is_pending(id) {
                (self.handlers[i].func)();
                self.nvic.clear_pending(id);
                self.nvic.enable(id);
            }
        }
    }
}

#[no_mangle]
pub unsafe extern "C" fn DefaultIrqHandler() {
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

#[repr(u32)]
#[derive(Copy, Clone)]
pub enum IrqId {
    USART3 = 39,
}