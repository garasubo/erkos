#![feature(custom_test_frameworks)]
#![test_runner(rt::test_runner)]
#![reexport_test_harness_main = "test_main"]
#![cfg_attr(test, no_main)]
#![no_std]
#![no_main]
#![feature(asm)]

use arch::nvic::Nvic;
use arch::systick::Systick;
use core::fmt::Write as CoreWrite;
use cortex_m_semihosting::hio::hstdout;
use device::eth::{Ethernet, EthernetTransmitter};
use device::exti::Exti;
use device::gpio::Gpio;
use device::irq::IrqId;
use device::rcc::RCC;
use device::serial::Serial;
use device::syscfg::Syscfg;
use embedded_hal::serial::{Read, Write};
use kernel::interrupt_manager::InterruptManager;
use kernel::kernel::Kernel;
use kernel::message_manager::MessageManager;
use kernel::process::Process;
use kernel::process_list::ProcessListItem;
use kernel::process_manager::{ProcessId, ProcessManager};
use kernel::scheduler::simple_scheduler::SimpleScheduler;
use kernel::scheduler::Scheduler;
use kernel::{process_create, process_register};
use log::dhprintln;
use rt::entry;
use user::syscall::*;
use util::avl_tree::Node;
use util::linked_list::ListItem;

entry!(main);

static mut TICK_PROCESS_ID: u32 = 0;

pub fn main() -> ! {
    // let mut stdout = hstdout().unwrap();
    // write!(stdout, "Hello, world!").unwrap();

    let process = process_create!(app_main, 1024);
    let tick_process = process_create!(tick, 1024);
    let button_process = process_create!(button_callback, 1024);
    let serial_process = process_create!(serial_func, 1024);
    let registers = RCC.get_registers_ref();
    let syscfg = Syscfg::new(0x4001_3800);

    unsafe {
        // enable USART3
        registers.apb1enr.write(1 << 18);
        // enable SYSCFG
        registers.apb2enr.write(1 << 14);
        syscfg.pmc.modify(|val| val | (1 << 23));
        // enable GPIOA - GPIOE, GPIOG-GPIOI, ETH and DMA1
        registers
            .ahb1enr
            .write(0b1_1101_1111 | (1 << 21) | (0b1111 << 25));
    }

    let mut serial = Serial::usart3();
    let systick = Systick::new();
    let val = systick.get_ticks_per_10ms();
    systick.clear_current();
    systick.set_reload(val * 100);
    systick.enable();
    let gpioa = Gpio::new(0x4002_0000);
    let gpiob = Gpio::new(0x4002_0400);
    let gpioc = Gpio::new(0x4002_0800);
    let gpiod = Gpio::new(0x4002_0c00);
    let gpioe = Gpio::new(0x4002_1000);
    let gpiog = Gpio::new(0x4002_1800);
    let gpioh = Gpio::new(0x4002_1c00);
    let gpioi = Gpio::new(0x4002_2000);
    let exti = Exti::new(0x4001_3C00);
    // For LED
    unsafe {
        gpiob.moder.modify(|val| (val | (0b1 << 28) | (0b1 << 14)));
        gpiob.bsrr.write(0x1 << 28);
    }
    // For button
    unsafe {
        gpioc.pupdr.modify(|val| (val | (0b10 << 26)));
        syscfg.exticr4.write(0b0010 << 4);
        exti.imr.write(0);
        exti.pr.write(0x1 << 13);
        exti.rtsr.modify(|val| (val | (0b1 << 13)));
        exti.imr.modify(|val| (val | (0b1 << 13)));
    }
    // For usart
    unsafe {
        gpiod.moder.write((0x2 << 16) | (0x2 << 18));
        gpiod.afrh.write(0x7 | (0x7 << 4));
    }
    // For nic
    unsafe {
        gpioa.moder.modify(|val| (val | 0b10101010 | (0b10 << 14)));
        gpioa
            .afrl
            .modify(|val| (val | 0b1011_1011_1011_1011 | (0b1011 << 28)));
        gpiob
            .moder
            .modify(|val| val | 0b1010 | (0b10 << 10) | (0b10 << 16) | (0b10101010 << 20));
        gpiob
            .afrl
            .modify(|val| (val | 0b1011_1011 | (0b1011 << 20)));
        gpiob
            .afrh
            .modify(|val| (val | 0b1011 | (0b1011_1011_1011_1011 << 8)));
        gpioc.moder.modify(|val| val | (0b1010101010 << 2));
        gpioc
            .afrl
            .modify(|val| val | (0b1011_1011_1011_1011_1011 << 4));
        gpioe.moder.modify(|val| val | (0x10 << 4));
        gpioe.afrl.modify(|val| val | (0b1011 << 8));
        gpiog
            .moder
            .modify(|val| val | (0b10 << 16) | (0b10 << 22) | (0b1010 << 26));
        gpiog
            .afrh
            .modify(|val| val | 0b1011 | (0b1011 << 12) | (0b1011_1011 << 20));
        gpioh
            .moder
            .modify(|val| val | (0x1010 << 4) | (0x1010 << 12));
        gpioh
            .afrl
            .modify(|val| val | (0b1011_1011 << 8) | (0b1011_1011 << 24));
        gpioi.moder.modify(|val| val | (0b10 << 20));
        gpioi.afrh.modify(|val| val | (0b1011 << 8));
        registers.ahb1rstr.modify(|val| val | (1 << 25));
        registers.ahb1rstr.modify(|val| val & !(1 << 25));
    }
    let nvic = Nvic::new();
    // serial.send_buffer("hello dma world\r\n".as_bytes());
    for c in "hello world".chars() {
        serial.write(c).unwrap();
    }
    let mut scheduler = SimpleScheduler::new();
    let mut process_manager = ProcessManager::new();
    process_register!(scheduler, process_manager, process);
    process_register!(scheduler, process_manager, tick_process, tick_process_id);
    process_register!(scheduler, process_manager, serial_process);
    process_register!(scheduler, process_manager, button_process);
    unsafe {
        TICK_PROCESS_ID = tick_process_id;
    }

    let mut interrupt_manager = InterruptManager::create(nvic);
    interrupt_manager.register(IrqId::USART3, serial_loopback);
    interrupt_manager.register(IrqId::EXTI15_10, nothing);

    let mut message_buff: [ListItem<u32>; 32] =
        unsafe { core::mem::MaybeUninit::uninit().assume_init() };
    let message_manager = MessageManager::new(&mut message_buff);

    let mut kernel = Kernel::create(
        scheduler,
        serial,
        interrupt_manager,
        process_manager,
        message_manager,
    );
    let eth = Ethernet::new(0x4002_8000);
    eth.init();
    #[link_section = ".uninit"]
    static mut ETH_TRANS_BUFF: [u64; 32] = [0; 32];
    let transmitter = EthernetTransmitter::new(&eth, unsafe { &mut ETH_TRANS_BUFF }, 32);
    unsafe {
        let sp: u32;
        asm!("mov $0, sp":"=r"(sp):::"volatile");
        dhprintln!("sp: {:x}", sp);
    }
    kernel.run();
}

pub unsafe extern "C" fn app_main(_r0: usize, _r1: usize, _r2: usize) -> ! {
    let message: &str = "app_main";
    print_str(message);
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
        wait_for_event();
        wait_for_interrupt(IrqId::EXTI15_10);
        print_str(message);
    }
}

pub unsafe extern "C" fn tick(_r0: usize, _r1: usize, _r2: usize) -> ! {
    let gpiob = Gpio::new(0x4002_0400);
    let mut status = false;
    let mut mode = 0;
    loop {
        match receive_message() {
            Some(command) => {
                mode = command;
            }
            None => {}
        }
        if mode == 0 {
            wait_for_event();
            continue;
        }
        if status {
            gpiob.get_registers_ref().bsrr.write(0x1 << 23);
        } else {
            gpiob.get_registers_ref().bsrr.write(0x1 << 7);
        }
        status = !status;
        wait_for_systick();
        wait_for_event();
    }
}

pub unsafe extern "C" fn serial_func() -> ! {
    let mut serial = Serial::usart3();
    let mut buff = ['\0' as u8; 64];
    let mut pos = 0;
    loop {
        wait_for_interrupt(IrqId::USART3);
        serial.read().map(|c| {
            if c == '\n' {
                let command = &buff[0..pos];
                if command == "blink".as_bytes() {
                    send_message(TICK_PROCESS_ID, 1);
                } else if command == "stop".as_bytes() {
                    send_message(TICK_PROCESS_ID, 0);
                }
                pos = 0;
                serial.write(c).unwrap();
            } else {
                if pos < buff.len() {
                    buff[pos] = c as u8;
                    pos += 1;
                    serial.write(c).unwrap();
                }
            }
        });
    }
}

pub fn serial_loopback() {
    // let mut serial = Serial::usart3();
    // serial.read().map(|c| serial.write(c).unwrap()).unwrap();
}

pub fn nothing() {
    let exti = Exti::new(0x4001_3C00);
    // let mut serial = Serial::usart3();
    unsafe {
        exti.pr.write(0x1 << 13);
        /*
        for c in "pressed\n".chars() {
            serial.write(c).unwrap();
        }
        */
    }
}
