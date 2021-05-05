#![feature(custom_test_frameworks)]
#![test_runner(rt::test_runner)]
#![reexport_test_harness_main = "test_main"]
#![cfg_attr(test, no_main)]
#![no_std]
#![no_main]
#![feature(asm)]

use rt::entry;
use wio_terminal::port::Port;
use wio_terminal::led::{Led, UserLed};

entry!(main);

pub fn main() -> ! {
    let port_a = Port::new();
    let led: UserLed = Led::init(&port_a);
    led.set();

    loop {}
}