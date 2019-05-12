extern crate embedded_hal as hal;
use volatile_register::{RO, RW};

#[repr(C)]
pub struct GpioRegisters {
    pub moder: RW<u32>,
    pub otyper: RW<u32>,
    pub ospeedr: RW<u32>,
    pub pupdr: RW<u32>,
    pub idr: RO<u32>,
    pub odr: RW<u32>,
    pub bsrr: RW<u32>,
    pub lckr: RW<u32>,
    pub afrl: RW<u32>,
    pub afrh: RW<u32>,
}

pub struct Gpio {
    registers: *mut GpioRegisters,
}

impl Gpio {
    pub fn new(base: usize) -> Gpio {
        Gpio { registers: base as *mut GpioRegisters }
    }

    pub fn get_registers_ref(&self) -> &GpioRegisters {
        unsafe { &*self.registers }
    }
}
