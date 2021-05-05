use core::ops::Deref;
use volatile_register::RW;

#[repr(C)]
pub struct GenericClocksRegisters {
    pub ctrla: RW<u8>,
    _reserved: [u8; 3],
    pub syncbusy: RW<u32>,
    _reserved1: [u32; 2],
    
    _reserved2: [u32; 4],

    pub genctrl: [RW<u32>; 12],

    _reserved3: [u32; 12],

    pub pchctrl: [RW<u32>; 48],
}

pub struct GenericClocks {}

impl Deref for GenericClocks {
    type Target = GenericClocksRegisters;

    fn deref(&self) -> &Self::Target {
        let registers = 0x4000_1c00 as *mut GenericClocksRegisters;
        unsafe { &*registers }
    }
}

pub struct GenericClock<'a, const N: u8> {
    clocks: &'a GenericClocks,
}

impl<'a, const N: u8> GenericClock<'a, N> {
    pub fn init(clocks: &GenericClocks) -> Self {
        clocks.genctrl[N].modify(|v| (v & !(0xffff << 16)) | (1 << 8));
        Self {
            clocks
        }
    }
}

