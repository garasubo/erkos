use volatile_register::{RO, WO, RW};
use core::ops::Deref;

#[repr(C)]
pub struct EthernetMacRegister {
    cr: RW<u32>,
    ffr:RW<u32>,
    hthr:RW<u32>,
    htlr:RW<u32>,

    miiar: RW<u32>,
    miidr: RW<u32>,
    fcr: RW<u32>,
    vlancr: RW<u32>,
    vlantr: RW<u32>,

    _reserved0: u64,
    rwuffr: RW<u32>,
    pmtcsr: RW<u32>,
    
    _reserved1: u32,
    dbgr: RW<u32>,
    sr: RW<u32>,
    imr: RW<u32>,

    a0hr: RW<u32>,
    a0lr: RW<u32>,
    a1hr: RW<u32>,
    a1lr: RW<u32>,

    a2hr: RW<u32>,
    a2lr: RW<u32>,
    a3hr: RW<u32>,
    a3lr: RW<u32>,
}

#[repr(C)]
pub struct EthernetMmcRegister {
    cr: RW<u32>,
    rir: RW<u32>,
    tir: RW<u32>,
    rimr: RW<u32>,

    timr: RW<u32>,
    _reserved3: [u32; 3],

    _reserved4: [u32; 8],

    // 0x40
    _reserved5: [u32; 3],
    tgfsccr: RW<u32>,

    // 0x50
    tgfmsccr: RW<u32>,
    _reserved6: [u32; 3],

    // 0x60
    _reserved7: [u32; 2],
    tgfcr: RW<u32>,
    _reserved8: u32,

    _reserved9: [u32; 8],

    // 0x90
    _reserved10: u32,
    rfcecr: RW<u32>,
    rfaecr: RW<u32>,
    _reserved11: u32,

    _reserved12: [u32; 8],

    // 0xC0
    _reserved13: u32,
    rgufcr: RW<u32>,
}

#[repr(C)]
pub struct EthernetPtpRegister {
    tscr: RW<u32>,
    ssir: RW<u32>,
    tshr: RW<u32>,
    tslr: RW<u32>,

    tshur: RW<u32>,
    tslur: RW<u32>,
    tsar: RW<u32>,
    tthr: RW<u32>,

    ttlr: RW<u32>,
    _reseverd17: u32,
    tssr: RW<u32>,
    ppscr: RW<u32>,
}

#[repr(C)]
pub struct EthernetDmaRegister {
    bmr: RW<u32>,
    tpdr: RW<u32>,
    rpdr: RW<u32>,
    rdlar: RW<u32>,

    tdlar: RW<u32>,
    sr: RW<u32>,
    omr: RW<u32>,
    ier: RW<u32>,

    mfbocr: RW<u32>,
    rswtr: RW<u32>,
    _reserved0: [u32; 2],

    _reserved1: [u32; 4],

    _reserved2: [u32; 2],
    chtdr: RW<u32>,
    chrdr: RW<u32>,

    chtrar: RW<u32>,
    chrbar: RW<u32>,
}

pub struct EthernetMac {
    base: u32,
}

pub struct EthernetMmc {
    base: u32,
}

pub struct EthernetPtp {
    base: u32,
}

pub struct EthernetDma {
    base: u32,
}

pub struct Ethernet {
    mac: EthernetMac,
    mmc: EthernetMmc,
    ptp: EthernetPtp,
    dma: EthernetDma,
}

impl Deref for EthernetMac {
    type Target = EthernetMacRegister;

    fn deref(&self) -> &Self::Target {
        let registers = self.base as *mut EthernetMacRegister;
        unsafe { &*registers }
    }
}

impl Deref for EthernetMmc {
    type Target = EthernetMmcRegister;

    fn deref(&self) -> &Self::Target {
        let registers = self.base as *mut EthernetMmcRegister;
        unsafe { &*registers }
    }
}

impl Deref for EthernetPtp {
    type Target = EthernetPtpRegister;

    fn deref(&self) -> &Self::Target {
        let registers = self.base as *mut EthernetPtpRegister;
        unsafe { &*registers }
    }
}

impl Deref for EthernetDma {
    type Target = EthernetDmaRegister;

    fn deref(&self) -> &Self::Target {
        let registers = self.base as *mut EthernetDmaRegister;
        unsafe { &*registers }
    }
}

impl Ethernet {
    pub const fn new(base: u32) -> Ethernet {
        Ethernet { 
            mac: EthernetMac { base },
            mmc: EthernetMmc { base: base + 0x100 },
            ptp: EthernetPtp { base: base + 0x700 },
            dma: EthernetDma { base: base + 0x1000 },
        }
    }
}