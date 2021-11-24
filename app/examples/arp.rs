#![no_std]
#![no_main]

use arch::nvic::Nvic;
use arch::systick::Systick;
use stm32f429zi::eth::{Ethernet, EthernetTransmitter, RxEntry, TxEntry};
use stm32f429zi::exti::Exti;
use stm32f429zi::gpio::Gpio;
use stm32f429zi::irq::IrqId;
use stm32f429zi::rcc::RCC;
use stm32f429zi::serial::Serial;
use stm32f429zi::syscfg::Syscfg;
use embedded_hal::serial::{Read, Write};
use embedded_hal::fmt::*;
use log::dhprintln;
use rt::entry;
use user::syscall::*;
use util::avl_tree::Node;
use util::linked_list::ListItem;
use smoltcp::wire::{
    ArpOperation, ArpPacket, ArpRepr, EthernetAddress, EthernetFrame, EthernetProtocol,
    EthernetRepr, Ipv4Address,
};
use core::fmt::Write as CoreWrite;

entry!(main);

static mut TICK_PROCESS_ID: u32 = 0;

pub fn main() -> ! {
    //let mut stdout = hstdout().unwrap();
    //write!(stdout, "Hello, world!").unwrap();

    //let process = process_create!(app_main, 1024);
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

    loop {
        let status =eth.basic_status();
        if status.is_link_detected() {
            const SIZE: usize = 14 + 28; // ETH + ARP
            let src_mac = EthernetAddress::from_bytes(&[0x00, 0x00, 0xde, 0xad, 0xbe, 0xef]);
            let arp_buffer = [0; 28];

            let mut packet =
                ArpPacket::new_checked(arp_buffer).expect("ArpPacket: buffer size is not correct");
            let arp = ArpRepr::EthernetIpv4 {
                operation: ArpOperation::Request,
                source_hardware_addr: src_mac,
                source_protocol_addr: Ipv4Address::new(192, 168, 1, 100),
                target_hardware_addr: EthernetAddress::from_bytes(&[0x00; 6]),
                target_protocol_addr: Ipv4Address::new(192, 168, 1, 254),
            };
            arp.emit(&mut packet);

            let eth_buffer = [0; SIZE]; // ETH + ARP
            let mut frame = EthernetFrame::new_checked(eth_buffer)
                .expect("EthernetFrame: buffer size is not correct");
            let header = EthernetRepr {
                src_addr: src_mac,
                dst_addr: EthernetAddress::BROADCAST,
                ethertype: EthernetProtocol::Arp,
            };
            header.emit(&mut frame);
            frame.payload_mut().copy_from_slice(&packet.into_inner());

            let result = transmitter.send(SIZE, |buf| {
                buf[0..SIZE].copy_from_slice(&frame.into_inner());
            });

            match result {
                Ok(_) => writeln!(serial, "ARP sent").unwrap(),
                Err(_) => writeln!(serial, "ARP failed").unwrap(),
            }
        }
    }
}
