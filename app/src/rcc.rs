use vcell::VolatileCell;

#[repr(C)]
pub struct RccRegisters {
    pub cr: VolatileCell<u32>,
    pub pllcfgr: VolatileCell<u32>,
    pub cfgr: VolatileCell<u32>,
    pub cir: VolatileCell<u32>,

    // 0x10
    pub ahb1rstr: VolatileCell<u32>,
    pub ahb2rstr: VolatileCell<u32>,
    pub ahb3rstr: VolatileCell<u32>,
    _reserved1: [u8; 4usize],

    // 0x20
    pub apb1rstr: VolatileCell<u32>,
    pub apb2rstr: VolatileCell<u32>,
    _reserved2: [u8; 8usize],

    // 0x30
    pub ahb1enr: VolatileCell<u32>,
    pub ahb2enr: VolatileCell<u32>,
    pub ahb3enr: VolatileCell<u32>,
    _reserved3: [u8; 4usize],

    // 0x40
    pub apb1enr: VolatileCell<u32>,
    pub apb2enr: VolatileCell<u32>,
    _reserved4: [u8; 8usize],

    // 0x50
    pub ahb1lpenr: VolatileCell<u32>,
    pub ahb2lpern: VolatileCell<u32>,
    pub ahb3lpenr: VolatileCell<u32>,
    _reserved5: [u8; 4usize],

    // 0x60
    pub apb1lpenr: VolatileCell<u32>,
    pub apb2lpenr: VolatileCell<u32>,
    _reserved6: [u8; 8usize],

    // 0x70
    pub bdcr: VolatileCell<u32>,
    pub csr: VolatileCell<u32>,
    _reserved7: [u8; 8usize],

    // 0x80
    pub sscgr: VolatileCell<u32>,
    pub plli2sr: VolatileCell<u32>,
    pub pllsaicfgr: VolatileCell<u32>,
    pub dckcfgr: VolatileCell<u32>,
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