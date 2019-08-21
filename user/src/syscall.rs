use kernel::syscall_id::*;

pub fn send_message(id: u32, message: u32) -> bool {
    let result: bool;
    unsafe {
        asm!(
        "
        svc 1
        "
        :"={r0}"(result)
        : "{r0}"(SEND_MESSAGE),"{r1}"(id),"{r2}"(message)
        :"r0"
        :"volatile"
        );
    }
    result
}

pub fn receive_message() -> Option<u32> {
    let result: bool;
    let message: u32;
    unsafe {
        asm!(
        "
        svc 1
        "
        :"={r0}"(result), "={r1}"(message)
        : "{r0}"(RECEIVE_MESSAGE)
        :"r0"
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
    unsafe{
        asm!(
            "
            svc 1
            "
            ::"{r0}"(WAIT_IRQ), "{r1}"(id)
            ::"volatile"
        );
    }
}

pub fn wait_for_event() {
    unsafe{
        asm!(
            "
            svc 1
            "
            ::"{r0}"(YIELD)
            ::"volatile"
        );
    }
}