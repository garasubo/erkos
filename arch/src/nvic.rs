use volatile_register::{RO, RW};

#[repr(C)]
pub struct NvicRegisters {
    pub iser: [RW<u32>; 16],
    _reserved1: [u32; 16],
    pub icer: [RW<u32>; 16],
    _reserved2: [u32; 16],
    pub ispr: [RW<u32>; 16],
    _reserved3: [u32; 16],
    pub icpr: [RW<u32>; 16],
    _reserved4: [u32; 16],
    pub iabr: [RO<u32>; 16],
    _reserved5: [u32; 48],
    pub ipr: [RW<u8>; 4 * 124],
}

pub struct Nvic;

impl Nvic {
    pub const fn new() -> Nvic {
        Nvic {}
    }

    pub fn get_registers_ref(&self) -> &NvicRegisters {
        let registers = 0xE000_E100 as *mut NvicRegisters;
        unsafe { &*registers }
    }

    pub fn enable(&self, id: u32) {
        let registers = self.get_registers_ref();

        let idx = (id / 32) as usize;
        unsafe {
            registers.iser[idx].write(1 << (id % 32));
        }
    }

    pub fn disable(&self, id: u32) {
        let registers = self.get_registers_ref();

        let idx = (id / 32) as usize;
        unsafe {
            registers.icer[idx].write(1 << (id % 32));
        }
    }

    pub fn is_pending(&self, id: u32) -> bool {
        let registers = self.get_registers_ref();
        let idx = (id / 32) as usize;
        (registers.ispr[idx].read() & (1 << (id % 32))) > 0
    }

    pub fn clear_pending(&self, id: u32) {
        let registers = self.get_registers_ref();
        let idx = (id / 32) as usize;
        unsafe {
            registers.icpr[idx].write(1 << (id % 32));
        }
    }
}
