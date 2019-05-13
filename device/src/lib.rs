#![crate_type = "rlib"]
#![no_std]
#![feature(asm)]

pub mod exti;
pub mod irq;
pub mod gpio;
pub mod serial;
pub mod rcc;
pub mod syscfg;
