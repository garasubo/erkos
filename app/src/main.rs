#![no_std]
#![no_main]

use rt::entry;
use cortex_m_semihosting::{debug, hio::{self, HStdout}};
use log::{debug, Log};

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
        static STACK: [u8; 1024] = [0; 1024];

        unsafe { &STACK[0] as *const u8 as usize + 1024 }
    }};
}

entry!(main);

pub fn main() -> ! {
    let hstdout = hio::hstdout().unwrap();
    let mut logger = Logger { hstdout };

    debug!(logger, "Hello, world!");

    debug!(logger, "Goodbye");

    let address = stack_allocate!();

    logger.log(address as u8);
    
    let address = stack_allocate!();

    logger.log(address as u8);

    debug::exit(debug::EXIT_SUCCESS);

    loop {}
}

