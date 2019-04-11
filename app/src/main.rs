#![no_std]
#![no_main]
#![feature(asm)]

use rt::entry;
use cortex_m_semihosting::{debug, hio::{self, HStdout}};
use log::{debug, Log, dhprintln};
use core::slice::from_raw_parts_mut;

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

struct Process {
    sp: *mut u8,
}

impl Process {
    fn create(entry: u32, sp: u32) -> Process {
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

    //logger.log(address as u8);
    
    let process = Process::create(app_main as u32, address);
    unsafe {
        asm!(
            "
            msr psp, $0
            svc 0
            "
            :: "{r0}"(process.sp)
            :"r4","r5","r6","r7","r8","r9","r10","r11":"volatile"
        );
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

