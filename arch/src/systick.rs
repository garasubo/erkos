use volatile_register::{RW, RO};
use core::ops::Deref;

#[repr(C)]
pub struct SystickRegisters {
    pub csr: RW<u32>,
    pub rvr: RW<u32>,
    pub cvr: RW<u32>,
    pub calib: RO<u32>,
}

pub struct Systick {}

impl Deref for Systick {
    type Target = SystickRegisters;

    fn deref(&self) -> &Self::Target {
        let registers = 0xE000_E010 as *mut SystickRegisters;
        unsafe { &*registers }
    }
}

impl Systick {
    pub const fn new() -> Systick {
        Systick {}
    }

    pub fn get_ticks_per_10ms(&self) -> u32 {
        self.calib.read() & 0x00FF_FFFF
    }

    pub fn clear_current(&self) {
        unsafe { self.cvr.write(0); }
    }

    pub fn set_reload(&self, val: u32) {
        unsafe { self.rvr.write(val); }
    }

    pub fn enable(&self) {
        unsafe { self.csr.modify(|val| (val | 0x3)); }
    }
}
