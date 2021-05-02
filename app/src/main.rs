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
use core::mem::MaybeUninit;
use cortex_m_semihosting::hio::hstdout;
use device::eth::{Ethernet, EthernetTransmitter, RxEntry, TxEntry};
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
    //let mut stdout = hstdout().unwrap();
    //write!(stdout, "Hello, world!").unwrap();

    //let process = process_create!(app_main, 1024);
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
        // select RMII mode
        syscfg.pmc.modify(|val| val | (1 << 23));
        // enable GPIOA - GPIOE, GPIOG-GPIOI, ETH and DMA1
        registers
            .ahb1enr
            .write(0b1_1101_1111 | (1 << 21) | (0b0111 << 25));
    }

    let mut serial = Serial::usart3();
    let systick = Systick::new();
    let val = systick.get_ticks_per_10ms();
    systick.clear_current();
    systick.set_reload(val * 100);
    // systick.enable();
    let gpioa = Gpio::new(0x4002_0000);
    let gpiob = Gpio::new(0x4002_0400);
    let gpioc = Gpio::new(0x4002_0800);
    let gpiod = Gpio::new(0x4002_0c00);
    let gpioe = Gpio::new(0x4002_1000);
    let gpiog = Gpio::new(0x4002_1800);
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
        // pa1, pa2, pa7
        gpioa.moder.modify(|val| (val | 0b101000 | (0b10 << 14)));
        // AF11
        gpioa
            .afrl
            .modify(|val| (val | 0b0000_1011_1011_0000 | (0b1011 << 28)));
        gpioa.ospeedr.modify(|val| val | 0b111100 | (0b11 << 14));
        // pb13 (RMII TXD1)
        gpiob.moder.modify(|val| val | (0b10 << 26));
        // AF11 for pb13
        gpiob.afrh.modify(|val| (val | (0b1011 << 20)));
        gpiob.ospeedr.modify(|val| val | (0b11 << 26));
        // pc1, 4, 5
        gpioc.moder.modify(|val| val | (0b10_10_00_00_10_00));
        // AF11 for pc1, 4, 5
        gpioc
            .afrl
            .modify(|val| val | (0b1011_1011_0000_0000_1011 << 4));
        gpioc.ospeedr.modify(|val| val | (0b11_11_00_00_11_00));
        // pg11, pg13(RMII TX_EN, TXD0)
        gpiog
            .moder
            .modify(|val| val | (0b10 << 22) | (0b10_10 << 26));
        gpiog
            .afrh
            .modify(|val| val | (0b1011 << 12) | (0b1011_1011 << 20));
        gpiog
            .ospeedr
            .modify(|val| val | (0b11 << 22) | (0b11 << 26));
        registers.ahb1rstr.modify(|val| val | (1 << 25));
        registers.ahb1rstr.modify(|val| val & !(1 << 25));
    }
    let nvic = Nvic::new();
    // serial.send_buffer("hello dma world\r\n".as_bytes());
    let eth = Ethernet::new(0x4002_8000);
    eth.init();
    let mut ETH_TRANS_BUFF: [TxEntry; 2] = Default::default();
    let mut ETH_RECV_BUFF: [RxEntry; 4] = Default::default();
    let mut transmitter = EthernetTransmitter::new(&eth, unsafe { &mut ETH_TRANS_BUFF }, unsafe {
        &mut ETH_RECV_BUFF
    });
    transmitter.init();
    for c in "hello world\n".chars() {
        serial.write(c).unwrap();
    }
    let message = "say hello\n\r";
    for _i in 0..10 {
        transmitter
            .send(message.as_bytes().len(), |buff| {
                buff.copy_from_slice(message.as_bytes());
            })
            .unwrap_or_else(|_| {
                for c in "error\r\n".chars() {
                    serial.write(c).unwrap();
                }
            });
        while transmitter.is_tx_running() {}
    }
    for _i in 0..10 {
        transmitter
            .send_buff(message.as_bytes())
            .unwrap_or_else(|_| {
                for c in "error\r\n".chars() {
                    serial.write(c).unwrap();
                }
            });
        while transmitter.is_tx_running() {}
    }
    loop {
        transmitter
            .poll()
            .and_then(|pkt| {
                for &p in pkt.iter() {
                    serial.write(p as char).unwrap();
                }
                Ok(())
            })
            .unwrap_or_else(|_| {
                for c in "error\r\n".chars() {
                    serial.write(c).unwrap();
                }
            });
    }
    let mut scheduler = SimpleScheduler::new();
    let mut process_manager = ProcessManager::new();
    //process_register!(scheduler, process_manager, process);
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
