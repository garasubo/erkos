#![no_std]
#![no_main]
#![feature(asm)]

use rt::entry;
use rt::Vector;
use rt::SYSCALL_FIRED;
use cortex_m_semihosting::{debug, hio::{self, HStdout}};
use log::{debug, Log, dhprintln};
use core::slice::from_raw_parts_mut;
use core::slice::from_raw_parts;
use device::rcc::{Rcc, RCC};
use device::serial::Serial;
use device::irqs::IrqId;
use device::IRQS;
use device::nvic::Nvic;
use embedded_hal::serial::{Read, Write};

struct Logger {
    hstdout: HStdout,
}

impl Log for Logger {
    type Error = ();

    fn log(&mut self, address: u8) -> Result<(), ()> {
        self.hstdout.write_all(&[address])
    }
}

macro_rules! stack_allocate {
    ($n:expr) => {{
        #[link_section = ".uninit"]
        static mut STACK: [u8; $n] = [0; $n];

        unsafe { &STACK[0] as *const u8 as u32 + $n }
    }};
}

macro_rules! reg_allocate {
    () => {{
        #[link_section = ".uninit"]
        static mut REGS: [u32; 8] = [0; 8];

        unsafe { REGS }
    }};
}

struct Process<'a> {
    sp: *mut u8,
    regs: &'a [u32; 8],
}

impl<'a> Process<'a> {
    fn create(entry: u32, sp: u32, regs: &'a [u32; 8]) -> Process {
        let base_frame_ptr = (sp - 0x20) as *mut u32;
        let base_frame = unsafe { from_raw_parts_mut(base_frame_ptr, 8) };
        base_frame[0] = 0; // r0
        base_frame[1] = 2; // r1
        base_frame[2] = 0; // r2
        base_frame[3] = 0; // r3
        base_frame[4] = 0; // r12
        base_frame[5] = 0; // lr(r14)
        base_frame[6] = entry; // return address
        base_frame[7] = 0x01000000; // xpsr, set thumb state
        Process {
            sp: base_frame_ptr as *mut u8,
            regs: regs,
        }
    }
}

entry!(main);

// copied from https://github.com/tock/tock
macro_rules! static_init {
    ($T:ty, $e:expr) => {
        // Ideally we could use mem::size_of<$T>, uninitialized or zerod here
        // instead of having an `Option`, however that is not currently possible
        // in Rust, so in some cases we're wasting up to a word.
        {
            use core::{mem, ptr};
            // Statically allocate a read-write buffer for the value, write our
            // initial value into it (without dropping the initial zeros) and
            // return a reference to it.
            static mut BUF: Option<$T> = None;
            let tmp : &'static mut $T = mem::transmute(&mut BUF);
            ptr::write(tmp as *mut $T, $e);
            tmp
        };
    }
}

pub fn main() -> ! {
    //let hstdout = hio::hstdout().unwrap();
    //let mut logger = Logger { hstdout };

    // debug!(logger, "Hello, world!");
    //dhprintln!("hello");


    let address = stack_allocate!(1024);
    let regs = reg_allocate!();

    //logger.log(address as u8);
    
    let mut process = Process::create(app_main as u32, address, &regs);
    let registers = RCC.get_registers_ref();

    registers.apb1enr.set(1 << 18);
    registers.ahb1enr.set(1 << 3);

    let mut serial = Serial::usart3();
    let nvic = Nvic::new();
    nvic.enable(IrqId::USART3 as u32);
    for c in "hello world".chars() {
        serial.write(c);
    }
    // Dummy code to prevent optimizing
    unsafe { IRQS[0] = Vector { reserved: 0 }; }
    loop {
        let mut sp = process.sp;
        let regs = process.regs;
        unsafe {
            asm!(
                "
                msr psp, $0
                ldmia $2, {r4-r11}
                svc 0
                stmia $2, {r4-r11}
                mrs $0, psp
                "
                :"={r0}"(sp): "{r0}"(sp),"{r1}"(regs)
                :"r4","r5","r6","r7","r8","r9","r10","r11":"volatile"
            );
        }
        process.sp = sp;
        unsafe {
            if SYSCALL_FIRED > 0 {
                let base_frame = unsafe { from_raw_parts_mut(process.sp as *mut u32, 8) };
                let svc_id = base_frame[0];
                if svc_id == 1 {
                    let arg2 = base_frame[2] as usize;
                    let arg1 = from_raw_parts(base_frame[1] as *const u8, arg2);

                    for i in 0..arg2 {
                        serial.write(arg1[i] as char);
                    }
                }
            }

            SYSCALL_FIRED = 0;
        }

        if (nvic.is_pending(IrqId::USART3 as u32)) {
            serial.read().map(|c| serial.write(c));
            nvic.clear_pending(IrqId::USART3 as u32);
            nvic.enable(IrqId::USART3 as u32);
        }
    }

    // debug!(logger, "Goodbye");
    //dhprintln!("goodbye");

    debug::exit(debug::EXIT_SUCCESS);

    loop {}
}

#[no_mangle]
pub unsafe extern "C" fn app_main(_r0: usize, _r1: usize, _r2: usize) -> ! {
    let message: &str = "app_main";
    let message_ptr = message.as_ptr();
    let length = message.bytes().len();
    asm!(
        "
        mov r0, #1
        svc 1
        "
    ::"{r1}"(message_ptr), "{r2}"(length)::"volatile");
    loop {}
}

