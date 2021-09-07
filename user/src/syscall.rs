use kernel::syscall_id::*;

pub fn dormant() {
    unsafe {
        llvm_asm!(
        "
        svc 1
        "
        :: "{r0}"(DORMANT)::"volatile"
        );
    }
}

pub fn send_message(id: u32, message: u32) -> bool {
    let result: bool;
    unsafe {
        llvm_asm!(
        "
        svc 1
        "
        :"={r0}"(result)
        : "{r0}"(SEND_MESSAGE),"{r1}"(id),"{r2}"(message)
        :"r0","r4","r5","r6","r8","r9","r10","r11"
        :"volatile"
        );
    }
    result
}

pub fn receive_message() -> Option<u32> {
    let result: bool;
    let message: u32;
    unsafe {
        llvm_asm!(
        "
        svc 1
        "
        :"={r0}"(result), "={r1}"(message)
        : "{r0}"(RECEIVE_MESSAGE)
        :"r0","r4","r5","r6","r8","r9","r10","r11"
        :"volatile"
        );
    }

    if result {
        Some(message)
    } else {
        None
    }
}

pub fn wait_for_interrupt(id: u32) {
    unsafe {
        llvm_asm!(
            "
            svc 1
            "
            ::"{r0}"(WAIT_IRQ), "{r1}"(id)
            :"r4","r5","r6","r8","r9","r10","r11":"volatile"
        );
    }
}

pub fn wait_for_event() {
    unsafe {
        llvm_asm!(
            "
            svc 1
            "
            ::"{r0}"(YIELD)
            :"r4","r5","r6","r8","r9","r10","r11":"volatile"
        );
    }
}

pub fn wait_for_systick() {
    unsafe {
        llvm_asm!(
            "
            svc 1
            "
            ::"{r0}"(WAIT_SYSTICK)
            :"r4","r5","r6","r8","r9","r10","r11":"volatile"
        );
    }
}

pub fn print_str(message: &str) {
    let message_ptr = message.as_ptr();
    let length = message.bytes().len();
    unsafe {
        llvm_asm!(
            "
            svc 1
            "
            ::"{r0}"(1),"{r1}"(message_ptr), "{r2}"(length)
            :"r4","r5","r6","r8","r9","r10","r11":"volatile"
        );
    }
}
