#![feature(custom_test_frameworks)]
#![test_runner(rt::test_runner)]
#![reexport_test_harness_main = "test_main"]
#![cfg_attr(test, no_main)]
#![no_std]
#![no_main]
#![feature(asm)]

use rt::entry;
use wio_terminal::{button::{Button, UserButton1}, pin::Pin, port::Port};
use wio_terminal::led::Led;

entry!(main);

pub fn main() -> ! {
    let port_a = Port::new();
    let port_c = Port::new();
    let led = Led::init(&port_a);
    let pc26 = Pin::new(&port_c);
    let button1 = UserButton1::init(&pc26);

    loop {
        if button1.is_pressed() {
            led.set();
        } else {
            led.clear();
        }
    }
}