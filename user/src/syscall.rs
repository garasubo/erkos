use kernel::syscall_id::*;

pub fn dormant() {
    unsafe {
        asm!(
            "svc 1",
            in("r0") DORMANT,
        );
    }
}

pub fn send_message(id: u32, message: u32) -> bool {
    let result: usize;
    unsafe {
        asm!(
            "svc 1",
            lateout("r0") result,
            in("r0") SEND_MESSAGE,
            in("r1") id,
            in("r2") message,
        );
    }
    result > 0
}

pub fn receive_message() -> Option<u32> {
    let result: usize;
    let message: u32;
    unsafe {
        asm!(
            "svc 1",
            lateout("r0")result,
            out("r1") message,
            in("r0") RECEIVE_MESSAGE,
        );
    }

    if result > 0 {
        Some(message)
    } else {
        None
    }
}

pub fn wait_for_interrupt(id: u32) {
    unsafe {
        asm!(
            "svc 1",
            in("r0") WAIT_IRQ,
            in("r1") id,
        );
    }
}

pub fn wait_for_event() {
    unsafe {
        asm!(
            "svc 1",
            in("r0") YIELD,
        );
    }
}

pub fn wait_for_systick() {
    unsafe {
        asm!(
            "svc 1",
            in("r0") WAIT_SYSTICK,
        );
    }
}

pub fn print_str(message: &str) {
    let message_ptr = message.as_ptr();
    let length = message.bytes().len();
    unsafe {
        asm!(
            "svc 1",
            in("r0") 1,
            in("r1") message_ptr,
            in("r2") length,
        );
    }
}
