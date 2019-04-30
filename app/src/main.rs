#![no_std]
#![no_main]
#![feature(asm)]

use rt::entry;
use rt::Vector;
use cortex_m_semihosting::{debug, hio::{self, HStdout}};
use log::{debug, Log, dhprintln};
use core::slice::from_raw_parts_mut;
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
    () => {{
        #[link_section = ".uninit"]
        static mut STACK: [u8; 1024] = [0; 1024];

        unsafe { &STACK[0] as *const u8 as u32 + 1024 }
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


    let address = stack_allocate!();
    let regs = [0u32; 8];

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
        unsafe {
            asm!(
                "
                msr psp, $0
                ldmia $2, {r4-r11}
                svc 0
                stmia $2, {r4-r11}
                mrs $0, psp
                "
                :"={r0}"(process.sp): "{r0}"(process.sp),"{r1}"(process.regs)
                :"r4","r5","r6","r7","r8","r9","r10","r11":"volatile"
            );
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
    asm!("svc 1"::::"volatile");
    loop {}
}

