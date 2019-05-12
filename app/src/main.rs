#![no_std]
#![no_main]
#![feature(asm)]

use rt::entry;
use cortex_m_semihosting::{debug, hio::{self, HStdout}};
use log::{debug, Log, dhprintln};
use core::option::Option;
use device::gpio::Gpio;
use device::rcc::{Rcc, RCC};
use device::serial::{Usart, Serial};
use device::IRQS;
use device::nvic::Nvic;
use device::syscfg::Syscfg;
use device::systick::Systick;
use device::exti::Exti;
use embedded_hal::serial::{Read, Write};
use kernel::process_create;
use kernel::process::Process;
use kernel::scheduler::simple_scheduler::{SimpleScheduler};
use kernel::process_list::ProcessListItem;
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
    let button_process = process_create!(button_callback, 256);
    let registers = RCC.get_registers_ref();

    unsafe {
        // enable USART3
        registers.apb1enr.write(1 << 18);
        // enable SYSCFG
        registers.apb2enr.write(1 << 14);
        // enable GPIOD and GPIOB and GPIOC
        registers.ahb1enr.write((1 << 3) | (1 << 2)| (1 << 1));
    }

    let mut serial = Serial::usart3();
    let systick = Systick::new();
    let val = systick.get_ticks_per_10ms();
    systick.clear_current();
    systick.set_reload(val * 100);
    systick.enable();
    let gpiob = Gpio::new(0x4002_0400);
    let gpioc = Gpio::new(0x4002_0800);
    let exti = Exti::new(0x4001_3C00);
    let syscfg = Syscfg::new(0x4001_3800);
    unsafe {
        gpiob.get_registers_ref().moder.modify(|val| (val | 0b1 | (0b1 << 14)));
        gpiob.get_registers_ref().bsrr.write(0x1);
    }
    unsafe {
        gpioc.get_registers_ref().pupdr.modify(|val| (val | (0b10 << 26)));
        syscfg.exticr4.write(0b0010 << 4);
        exti.imr.write(0);
        exti.pr.write(0x1 << 13);
        exti.rtsr.modify(|val| (val | (0b1 << 13)));
        exti.imr.modify(|val| (val | (0b1 << 13)));
    }
    let nvic = Nvic::new();
    for c in "hello world".chars() {
        serial.write(c);
    }
    // Dummy code to prevent optimizing
    let mut scheduler = SimpleScheduler::create();
    let mut proc_item = ProcessListItem::create(process);
    let mut tick_item = ProcessListItem::create(tick_process);
    let mut button_item = ProcessListItem::create(button_process);
    scheduler.push(&mut proc_item);
    scheduler.push(&mut tick_item);
    scheduler.push(&mut button_item);
    let mut interrupt_manager = InterruptManager::create(nvic);
    interrupt_manager.register(IrqId::USART3, serial_loopback);
    interrupt_manager.register(IrqId::EXTI15_10, nothing);
    let mut kernel = Kernel::create(scheduler, serial, interrupt_manager);
    kernel.run();

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

pub unsafe extern "C" fn button_callback() -> ! {
    let message: &str = "button pressed\n";
    let message_ptr = message.as_ptr();
    let length = message.bytes().len();
    loop {
        asm!(
            "
            mov r0, #3
            mov r1, #40
            svc 1
            "
        :::"r0","r1":"volatile");
        asm!(
            "
            mov r0, #1
            svc 1
            "
        ::"{r1}"(message_ptr), "{r2}"(length):"r0":"volatile");
    }
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

pub fn nothing() {
    let exti = Exti::new(0x4001_3C00);
    let mut serial = Serial::usart3();
    unsafe {
        exti.pr.write(0x1 << 13);
        for c in "pressed\n".chars() {
            serial.write(c);
        }
    }
}
