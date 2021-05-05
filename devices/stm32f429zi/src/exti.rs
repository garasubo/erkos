use core::ops::Deref;
use volatile_register::RW;

#[repr(C)]
pub struct ExtiRegisters {
    pub imr: RW<u32>,
    pub emr: RW<u32>,
    pub rtsr: RW<u32>,
    pub ftsr: RW<u32>,
    pub swier: RW<u32>,
    pub pr: RW<u32>,
}

pub struct Exti {
    base: u32,
}

impl Deref for Exti {
    type Target = ExtiRegisters;

    fn deref(&self) -> &Self::Target {
        let registers = self.base as *mut ExtiRegisters;
        unsafe { &*registers }
    }
}

impl Exti {
    pub const fn new(base: u32) -> Exti {
        Exti { base }
    }
}
