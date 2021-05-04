use core::ops::Deref;
use core::marker::PhantomData;
use volatile_register::RW;

#[repr(C)]
pub struct PortRegisters {
    pub dir: RW<u32>,
    pub dirclr: RW<u32>,
    pub dirset: RW<u32>,
    pub dirtgl: RW<u32>,

    pub out: RW<u32>,
    pub outclr: RW<u32>,
    pub outset: RW<u32>,
    pub outtgl: RW<u32>,

    pub in_:RW<u32>,
    pub ctrl: RW<u32>,
    pub wrconfigf: RW<u32>,
    pub evctrl: RW<u32>,

    pub pmux: [RW<u8>; 16],

    pub pincfg: [PinCfg; 32],
}

#[repr(transparent)]
pub struct PinCfg {
    reg: RW<u8>,
}

impl PinCfg {
    pub fn set_pmuxen(&self) {
        unsafe {
            self.reg.modify(|r| r | 1);
        }
    }
    pub fn set_inen(&self) {
        unsafe {
            self.reg.modify(|r| r | (1 << 1));
        }
    }
    pub fn set_pullen(&self) {
        unsafe{
            self.reg.modify(|r| r | (1 << 2));
        }
    }
    pub fn set_drvstr(&self) {
        unsafe{
            self.reg.modify(|r| r | (1 << 6));
        }
    }
} 

pub struct Port<Group> {
    _marker: PhantomData<Group>,
}

impl<Group> Port<Group> {
    pub fn new() -> Self {
        Port {
            _marker: PhantomData,
        }
    }
}

pub enum PortA {}
pub enum PortB {}
pub enum PortC {}
pub enum PortD {}

impl Deref for Port<PortA> {
    type Target = PortRegisters;

    fn deref(&self) -> &Self::Target {
        let registers = 0x4100_8000 as *mut PortRegisters;
        unsafe { &*registers }
    }
}

impl Deref for Port<PortB> {
    type Target = PortRegisters;

    fn deref(&self) -> &Self::Target {
        let registers = 0x4100_8080 as *mut PortRegisters;
        unsafe { &*registers }
    }
}

impl Deref for Port<PortC> {
    type Target = PortRegisters;

    fn deref(&self) -> &Self::Target {
        let registers = 0x4100_8100 as *mut PortRegisters;
        unsafe { &*registers }
    }
}

impl Deref for Port<PortD> {
    type Target = PortRegisters;

    fn deref(&self) -> &Self::Target {
        let registers = 0x4100_8180 as *mut PortRegisters;
        unsafe { &*registers }
    }
}