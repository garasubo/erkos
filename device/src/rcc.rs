use volatile_register::RW;

#[repr(C)]
pub struct RccRegisters {
    pub cr: RW<u32>,
    pub pllcfgr: RW<u32>,
    pub cfgr: RW<u32>,
    pub cir: RW<u32>,

    // 0x10
    pub ahb1rstr: RW<u32>,
    pub ahb2rstr: RW<u32>,
    pub ahb3rstr: RW<u32>,
    _reserved1: [u8; 4usize],

    // 0x20
    pub apb1rstr: RW<u32>,
    pub apb2rstr: RW<u32>,
    _reserved2: [u8; 8usize],

    // 0x30
    pub ahb1enr: RW<u32>,
    pub ahb2enr: RW<u32>,
    pub ahb3enr: RW<u32>,
    _reserved3: [u8; 4usize],

    // 0x40
    pub apb1enr: RW<u32>,
    pub apb2enr: RW<u32>,
    _reserved4: [u8; 8usize],

    // 0x50
    pub ahb1lpenr: RW<u32>,
    pub ahb2lpern: RW<u32>,
    pub ahb3lpenr: RW<u32>,
    _reserved5: [u8; 4usize],

    // 0x60
    pub apb1lpenr: RW<u32>,
    pub apb2lpenr: RW<u32>,
    _reserved6: [u8; 8usize],

    // 0x70
    pub bdcr: RW<u32>,
    pub csr: RW<u32>,
    _reserved7: [u8; 8usize],

    // 0x80
    pub sscgr: RW<u32>,
    pub plli2sr: RW<u32>,
    pub pllsaicfgr: RW<u32>,
    pub dckcfgr: RW<u32>,
}

pub struct Rcc {
    base: usize,
}

impl Rcc {
    pub const fn new(base: usize) -> Rcc {
        Rcc { base }
    }

    pub fn get_registers_ref(&self) -> &RccRegisters {
        let registers = self.base as *mut RccRegisters;
        unsafe { &*registers }
    }
}

pub static RCC: Rcc = Rcc::new(0x4002_3800);
