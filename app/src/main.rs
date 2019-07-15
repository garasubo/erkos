#![feature(custom_test_frameworks)]
#![test_runner(rt::test_runner)]
#![reexport_test_harness_main = "test_main"]
#![cfg_attr(test, no_main)]
#![no_std]
#![no_main]
#![feature(asm)]

use rt::entry;
use device::gpio::Gpio;
use device::rcc:: RCC;
use device::serial::Serial;
use arch::nvic::Nvic;
use arch::systick::Systick;
use device::exti::Exti;
use device::irq::IrqId;
use device::syscfg::Syscfg;
use embedded_hal::serial::{Read, Write};
use kernel::process_create;
use kernel::process::Process;
use kernel::scheduler::simple_scheduler::{SimpleScheduler};
use kernel::scheduler::{Scheduler};
use kernel::process_list::ProcessListItem;
use kernel::process_manager::{ProcessManager, ProcessId};
use kernel::interrupt_manager::InterruptManager;
use kernel::message_manager::MessageManager;
use kernel::kernel::Kernel;
use util::binary_tree::Node;
use util::linked_list::ListItem;

entry!(main);


pub fn main() -> ! {
    //let mut logger = Logger { hstdout };

    // debug!(logger, "Hello, world!");

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
    let gpiod = Gpio::new(0x40020c00);
    let exti = Exti::new(0x4001_3C00);
    let syscfg = Syscfg::new(0x4001_3800);
    // For LED
    unsafe {
        gpiob.get_registers_ref().moder.modify(|val| (val | 0b1 | (0b1 << 14)));
        gpiob.get_registers_ref().bsrr.write(0x1);
    }
    // For button
    unsafe {
        gpioc.get_registers_ref().pupdr.modify(|val| (val | (0b10 << 26)));
        syscfg.exticr4.write(0b0010 << 4);
        exti.imr.write(0);
        exti.pr.write(0x1 << 13);
        exti.rtsr.modify(|val| (val | (0b1 << 13)));
        exti.imr.modify(|val| (val | (0b1 << 13)));
    }
    // For usart
    unsafe {
        gpiod.get_registers_ref().moder.write((0x2 << 16) | (0x2 << 18));
        gpiod.get_registers_ref().afrh.write(0x7 | (0x7 << 4));
    }
    let nvic = Nvic::new();
    for c in "hello world".chars() {
        serial.write(c).unwrap();
    }
    let mut scheduler = SimpleScheduler::new();
    let mut process_manager = ProcessManager::new();
    let mut proc_node = Node::new(ProcessId(0), process);
    let mut tick_node = Node::new(ProcessId(0), tick_process);
    let mut button_node = Node::new(ProcessId(0), button_process);
    let mut process_item = ProcessListItem::create(process_manager.register(&mut proc_node));
    let mut tick_item = ProcessListItem::create(process_manager.register(&mut tick_node));
    let mut button_item = ProcessListItem::create(process_manager.register(&mut button_node));

    scheduler.push(&mut process_item);
    scheduler.push(&mut tick_item);
    scheduler.push(&mut button_item);

    let mut interrupt_manager = InterruptManager::create(nvic);
    interrupt_manager.register(IrqId::USART3, serial_loopback);
    interrupt_manager.register(IrqId::EXTI15_10, nothing);

    let mut message_buff: [ListItem<u32>; 32] = unsafe { core::mem::uninitialized() };
    let message_manager = MessageManager::new(&mut message_buff);

    let mut kernel = Kernel::create(scheduler, serial, interrupt_manager, process_manager, message_manager);
    kernel.run();
}

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
    loop {
        asm!(
            "
            mov r0, #5
            svc 1
            "
        :::"r0":"volatile");
    }
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
            mov r0, #4
            svc 1
            "
        :::"r0":"volatile");
        gpiob.get_registers_ref().bsrr.write(0x1 << 23);
        asm!(
            "
            mov r0, #4
            svc 1
            "
        :::"r0":"volatile");
    }
}

pub fn serial_loopback() {
    let mut serial = Serial::usart3();
    serial.read().map(|c| serial.write(c).unwrap()).unwrap();
}

pub fn nothing() {
    let exti = Exti::new(0x4001_3C00);
    let mut serial = Serial::usart3();
    unsafe {
        exti.pr.write(0x1 << 13);
        for c in "pressed\n".chars() {
            serial.write(c).unwrap();
        }
    }
}