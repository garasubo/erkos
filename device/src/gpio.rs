extern crate embedded_hal as hal;
use vcell::VolatileCell;

#[repr(C)]
pub struct GpioRegisters {
    pub moder: VolatileCell<u32>,
    pub otyper: VolatileCell<u32>,
    pub ospeedr: VolatileCell<u32>,
    pub pupdr: VolatileCell<u32>,
    pub idr: VolatileCell<u32>,
    pub odr: VolatileCell<u32>,
    pub bsrr: VolatileCell<u32>,
    pub lckr: VolatileCell<u32>,
    pub afrl: VolatileCell<u32>,
    pub afrh: VolatileCell<u32>,
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
