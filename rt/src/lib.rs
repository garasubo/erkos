#![feature(custom_test_frameworks)]
#![test_runner(crate::test_runner)]
#![reexport_test_harness_main = "test_main"]
#![no_std]
#![feature(llvm_asm)]

use core::panic::PanicInfo;
use core::ptr;
use cortex_m_semihosting::debug;
use log::dhprintln;

#[no_mangle]
pub unsafe extern "C" fn Reset() -> ! {
    extern "C" {
        static mut _sbss: u8;
        static mut _ebss: u8;
        static mut _sdata: u8;
        static mut _edata: u8;
        static _sidata: u8;
        static mut _svector_table: u8;
        static mut _evector_table: u8;
        static _sivector_table: u8;
        static mut _sirq_table: u8;
        static mut _eirq_table: u8;
    }

    let count = &_evector_table as *const u8 as usize - &_svector_table as *const u8 as usize;
    ptr::copy_nonoverlapping(
        &_sivector_table as *const u8,
        &mut _svector_table as *mut u8,
        count,
    );
    let count = &_eirq_table as *const u8 as usize - &_sirq_table as *const u8 as usize;
    ptr::write_bytes(&mut _sirq_table as *mut u8, 0, count);
    // write to VTOR
    ptr::write_volatile(0xE000_ED08 as *mut u32, &_svector_table as *const u8 as u32);

    let count = &_ebss as *const u8 as usize - &_sbss as *const u8 as usize;
    ptr::write_bytes(&mut _sbss as *mut u8, 0, count);

    let count = &_edata as *const u8 as usize - &_sdata as *const u8 as usize;
    ptr::copy_nonoverlapping(&_sidata as *const u8, &mut _sdata as *mut u8, count);

    extern "Rust" {
        fn main() -> !;
    }

    main()
}

#[link_section = ".vector_table.reset_vector"]
#[no_mangle]
pub static RESET_VECTOR: unsafe extern "C" fn() -> ! = Reset;

#[panic_handler]
fn panic(_panic: &PanicInfo<'_>) -> ! {
    loop {}
}

#[macro_export]
macro_rules! entry {
    ($path:path) => {
        #[cfg(not(test))]
        #[export_name = "main"]
        pub unsafe fn __main() -> ! {
            let f: fn() -> ! = $path;

            f()
        }
        #[cfg(test)]
        #[export_name = "main"]
        pub unsafe fn __main() -> ! {
            test_main();
            loop {}
        }
    };
}

#[repr(C)]
#[derive(Clone, Copy)]
pub union Vector {
    pub reserved: u32,
    pub handler: unsafe extern "C" fn(),
}

extern "C" {
    fn NMI();
    fn HardFault();
    fn MemManage();
    fn BusFault();
    fn UsageFault();
    fn PendSV();
    fn SysTick();
}

#[link_section = ".vector_table.exceptions"]
#[no_mangle]
pub static EXCEPTIONS: [Vector; 14] = [
    Vector { handler: NMI },
    Vector { handler: HardFault },
    Vector { handler: MemManage },
    Vector { handler: BusFault },
    Vector {
        handler: UsageFault,
    },
    Vector { reserved: 0 },
    Vector { reserved: 0 },
    Vector { reserved: 0 },
    Vector { reserved: 0 },
    Vector { handler: SVCall },
    Vector { reserved: 0 },
    Vector { reserved: 0 },
    Vector { handler: PendSV },
    Vector { handler: SysTick },
];

#[cfg(not(debug_assertions))]
#[no_mangle]
pub extern "C" fn DefaultExceptionHandler() {
    loop {}
}

#[cfg(debug_assertions)]
#[no_mangle]
pub extern "C" fn DefaultExceptionHandler() {
    debug::exit(debug::EXIT_SUCCESS);
    loop {}
}

#[no_mangle]
#[used]
pub static mut SYSCALL_FIRED: usize = 0;

#[no_mangle]
pub unsafe extern "C" fn SVCall() {
    llvm_asm!(
        "
        cmp lr, #0xfffffff9
        bne to_kernel

        /* switch thread mode to unprivileged */
        movw lr, #0xfffd
        movt lr, #0xffff
        bx lr
    
      to_kernel:
        ldr r0, =SYSCALL_FIRED
        mov r1, #1
        str r1, [r0, #0]

        movw lr, #0xfff9
        movt lr, #0xffff
        bx lr
        "
    ::::"volatile");
}

pub fn test_runner(tests: &[&dyn Fn()]) {
    dhprintln!("Running {} tests", tests.len());
    for test in tests {
        test();
    }
    debug::exit(debug::EXIT_SUCCESS);
}
