#![no_std]
#![no_main]
#![feature(asm)]

use rt::entry;
use rt::Vector;
use rt::SYSCALL_FIRED;
use cortex_m_semihosting::{debug, hio::{self, HStdout}};
use log::{debug, Log, dhprintln};
use core::option::Option;
use core::slice::from_raw_parts;
use device::gpio::Gpio;
use device::rcc::{Rcc, RCC};
use device::serial::{Usart, Serial};
use device::IRQS;
use device::nvic::Nvic;
use device::systick::Systick;
use embedded_hal::serial::{Read, Write};
use kernel::process_create;
use kernel::process::Process;
use kernel::scheduler::simple_scheduler::{ProcessList, SimpleScheduler};
use kernel::interrupt_manager::{InterruptManager, IrqId};
use kernel::kernel::Kernel;

struct Logger {
    hstdout: HStdout,
}

impl Log for Logger {
    type Error = ();

    fn log(&mut self, address: u8) -> Result<(), ()> {
        self.hstdout.write_all(&[address])
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

    //logger.log(address as u8);
    
    let process = process_create!(app_main, 1024);
    let tick_process = process_create!(tick, 512);
    let registers = RCC.get_registers_ref();

    unsafe {
        registers.apb1enr.write(1 << 18);
        // enable GPIOD and GPIOB
        registers.ahb1enr.write((1 << 3) | (1 << 1));
    }

    let mut serial = Serial::usart3();
    let systick = Systick::new();
    let val = systick.get_ticks_per_10ms();
    systick.clear_current();
    systick.set_reload(val * 100);
    systick.enable();
    let gpiob = Gpio::new(0x4002_0400);
    unsafe {
        gpiob.get_registers_ref().moder.modify(|val| (val | 0x1 | (0x1 << 14)));
        gpiob.get_registers_ref().bsrr.write(0x1);
    }
    let mut nvic = Nvic::new();
    for c in "hello world".chars() {
        serial.write(c);
    }
    // Dummy code to prevent optimizing
    let mut scheduler = SimpleScheduler::create();
    let mut proc_item = ProcessList::create(process);
    let mut tick_item = ProcessList::create(tick_process);
    scheduler.push(&mut proc_item);
    scheduler.push(&mut tick_item);
    let mut interrupt_manager = InterruptManager::create(nvic);
    interrupt_manager.register(IrqId::USART3, serial_loopback);
    let mut kernel = Kernel::create(scheduler, serial, interrupt_manager);
    kernel.run();

    loop {
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

pub unsafe extern "C" fn tick(_r0: usize, _r1: usize, _r2: usize) -> ! {
    loop {
        let gpiob = Gpio::new(0x4002_0400);
        gpiob.get_registers_ref().bsrr.write(0x1 << 7);
        asm!(
            "
            mov r0, #2
            svc 1
            "
        :::"r0":"volatile");
        gpiob.get_registers_ref().bsrr.write(0x1 << 23);
        asm!(
            "
            mov r0, #2
            svc 1
            "
        :::"r0":"volatile");
    }
}

pub fn serial_loopback() {
    let mut serial = Serial::usart3();
    serial.read().map(|c| serial.write(c));
}
