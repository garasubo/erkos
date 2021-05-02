use core::ops::Deref;
use volatile_register::RW;

#[repr(C)]
pub struct SyscfgRegisters {
    pub memrmp: RW<u32>,
    pub pmc: RW<u32>,
    pub exticr1: RW<u32>,
    pub exticr2: RW<u32>,
    pub exticr3: RW<u32>,
    pub exticr4: RW<u32>,
    _reserved: u32,
    pub cmpcr: RW<u32>,
}

pub struct Syscfg {
    base: u32,
}

impl Deref for Syscfg {
    type Target = SyscfgRegisters;

    fn deref(&self) -> &Self::Target {
        let registers = self.base as *mut SyscfgRegisters;
        unsafe { &*registers }
    }
}

impl Syscfg {
    pub const fn new(base: u32) -> Syscfg {
        Syscfg { base }
    }
}
