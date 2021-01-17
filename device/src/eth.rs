use volatile_register::{RO, WO, RW};
use core::ops::{Deref, DerefMut};
use aligned::{Aligned, A8};

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

pub mod phy {
    pub const REG_BCR: u8 = 0;
    pub const REG_BSR: u8 = 1;
    pub const REG_ID1R: u8 = 2;
    pub const REG_ID2R: u8 = 3;
    pub const REG_ANAR: u8 = 4;
    pub const REG_ANLPAR: u8 = 5;
    pub const REG_ANER: u8 = 6;
    pub const REG_ANNPTR: u8 = 7;
    pub const REG_ANNPRR: u8 = 8;

    pub const REG_MMD_ACR: u8 = 13;
    pub const REG_MMD_ADR: u8 = 14;

    pub const REG_EDPD_CTR: u8 = 16;

    pub const REG_MSR: u8 = 17;
    pub const REG_SMR: u8 = 18;

    pub const REG_TDR_PDCR: u8 = 24;
    pub const REG_TDR_CSR: u8 = 25;

    pub const REG_SECR: u8 = 26;
    pub const REG_SCSIR: u8 = 27;
    pub const REG_CLR: u8 = 28;
    pub const REG_ISFR: u8 = 29;
    pub const REG_IMR: u8 = 30;
    pub const REG_SCSR: u8 = 31;
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

    fn read_phy_reg(&self, reg: u8) -> u32 {
        unsafe {
            self.mac.miiar.modify(|val| (val & !(0x1f << 6) | ((reg as u32) << 6)) & !(1 << 1) | 1);
            while self.mac.miiar.read() & 1 > 0 {}
            // wait until MB is cleared
            self.mac.miidr.read()
        }
    }

    fn write_phy_reg(&self, reg: u8, data: u32) {
        unsafe {
            self.mac.miidr.write(data);
            self.mac.miiar.modify(|val| val & !(0x1f << 6) | ((reg as u32) << 6) | (1 << 1) | 1);
            // wait until MB is cleared
            while self.mac.miiar.read() & 1 > 0 {}
        }
    }
    
    fn modify_phy_reg<F>(&self, reg: u8, f: F) where F: FnOnce(u32) -> u32 {
        unsafe {
            self.mac.miiar.modify(|val| (val & !(0x1f << 6) | ((reg as u32) << 6)) & !(1 << 1) | 1);
            while self.mac.miiar.read() & 1 > 0 {}
            // wait until MB is cleared
            let val = self.mac.miidr.read();
            self.mac.miidr.write(f(val));
            self.mac.miiar.modify(|val| val & !(0x1f << 6) | ((reg as u32) << 6) | (1 << 1) | 1);
            while self.mac.miiar.read() & 1 > 0 {}
        }
    }

    pub fn init(&self) {
        unsafe {
            // reset dma
            self.dma.bmr.modify(|val| val | 1);
            while self.dma.bmr.read() & 1 > 0 {}
            
            // hclk div 16
            self.mac.miiar.modify(|val| (val & !(0b11 << 2)) | 0b010 << 2);

            // reset phy
            // set soft reset
            self.write_phy_reg(phy::REG_BCR, 1 << 15);
            // set auto negotiation
            self.modify_phy_reg(phy::REG_BCR, |val| val | (1 << 12) | (1 << 9));

            // configure mac
            // CSTF, FES, DM, APCS, RE, TE
            self.mac.cr.modify(|val| val | (1 << 25) | (1 << 14) | (1 << 11) | (1 << 7) | (1 << 2) | (1 << 3));

            // RA, PM
            self.mac.ffr.modify(|val| val | (1 << 31) | 1);
            
            // set pause time 100
            self.mac.fcr.modify(|val| (val & !(0xffff << 16)) | (0x100 << 16));

            // DTCEFD, RSF, DFRF, TSF, FEF, OSF
            self.dma.omr.modify(|val| val | (1 << 26) |(1 << 25) | (1 << 24) | (1 << 21) | (1 << 7) | (1 << 2));

            // AAB, FB, RDP = 32, PBL = 32, PM = 01, USP
            self.dma.bmr.modify(|val| (val & !(0x3f << 8) & !(0b11 << 14) & !(0x3f << 17)) | (1 << 25) | (1 << 16)  | (32 << 17) | (32 << 8) | (0b01 << 14) | (1 << 23));

            while self.read_phy_reg(phy::REG_SCSR) & (1 << 12) == 0 {}
        }
    }
}

const VLAN_MAX_SIZE: usize = 1522;

#[repr(C)]
pub struct TxEntry {
    desc: Aligned<A8, [u32; 4]>,
    buff: Aligned<A8, [u8; VLAN_MAX_SIZE]>,
}

impl TxEntry {
    fn get_packet(&mut self, length: usize) -> Option<TxPacket> {
        if length > VLAN_MAX_SIZE {
            return None;
        }

        let ptr = &self.desc[0] as *const u32;
        if unsafe { core::ptr::read_volatile(ptr) } & (1 << 31) == 0 {
            self.desc[1] &= !0x1fff;
            self.desc[1] |= length as u32;
            self.desc[2] = self.buff.as_ptr() as u32;
            Some(TxPacket{ entry: self, length })
        } else {
            None
        }
    }
}

impl Default for TxEntry {
    fn default() -> Self {
        TxEntry {
            desc: Aligned([0; 4]),
            buff: Aligned([0; VLAN_MAX_SIZE]),
        }
    }
}


pub struct TxPacket<'a> {
    entry: &'a mut TxEntry,
    length: usize,
}

impl<'a> TxPacket<'a> {
    fn start_send(&mut self) {
        let ptr = &mut self.entry.desc[0] as *mut u32;
        let value = unsafe { core::ptr::read_volatile(ptr) };
        let value = value | (1 << 29) | (1 << 28);
        unsafe { core::ptr::write_volatile(ptr, value) };
        // Set owned bit, CIC, LS, FS
        unsafe { core::ptr::write_volatile(ptr, value | (1 << 31)) };
    }
}

impl<'a> Deref for TxPacket<'a> {
    type Target = [u8];
    fn deref(&self) -> &Self::Target {
        &self.entry.buff[0..self.length]
    }
}

impl<'a> DerefMut for TxPacket<'a> {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.entry.buff[0..self.length]
    }
}

#[repr(C)]
pub struct RxEntry {
    desc: Aligned<A8, [u32; 4]>,
    buff: Aligned<A8, [u8; VLAN_MAX_SIZE]>,
}

impl RxEntry {
    pub fn poll(&mut self) -> Result<RxPacket, RxError> {
        let ptr = &self.desc[0] as *const u32;
        while unsafe { core::ptr::read_volatile(ptr) } & (1 << 31) > 0 {}
        // LS and FS are set
        if self.desc[0] & (1 << 8) > 0 && self.desc[0] & (1 << 9) > 0 {
            let frame_len = (self.desc[1] & 0xfff) as usize;
            Ok(RxPacket{ entry: self, length: frame_len })
        } else {
            Err(RxError::NoBuffer)
        }
    }
}

impl Default for RxEntry {
    fn default() -> Self {
        RxEntry {
            desc: Aligned([0; 4]),
            buff: Aligned([0; VLAN_MAX_SIZE]),
        }
    }
}

pub struct RxPacket<'a> {
    entry: &'a mut RxEntry,
    length: usize,
}

impl<'a> RxPacket<'a> {
}

impl<'a> Deref for RxPacket<'a> {
    type Target = [u8];
    fn deref(&self) -> &Self::Target {
        &self.entry.buff[0..self.length]
    }
}

impl<'a> DerefMut for RxPacket<'a> {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.entry.buff[0..self.length]
    }
}

impl<'a> Drop for RxPacket<'a> {
    fn drop(&mut self) {
        // set own bit
        self.entry.desc[0] |= 1 << 31;
    }
}


pub struct EthernetTransmitter<'a> {
    eth: &'a Ethernet,
    tx_entries: &'a mut [TxEntry],
    rx_entries: &'a mut [RxEntry],
    tx_pos: usize,
    rx_pos: usize,
}

pub enum TxError {
    NoBuffer,
}
pub enum RxError {
    NoBuffer,
}

impl<'a> EthernetTransmitter<'a> {
    pub fn new(eth: &'a Ethernet, tx_entries: &'a mut [TxEntry], rx_entries: &'a mut [RxEntry]) -> EthernetTransmitter<'a> {
        EthernetTransmitter {
            eth,
            tx_entries,
            rx_entries,
            tx_pos: 0,
            rx_pos: 0,
        }
    }

    pub fn init(&mut self) {
        for i in 0..self.tx_entries.len() {
            // TCH
            self.tx_entries[i].desc[0] = 1 << 20;
            self.tx_entries[i].desc[1] = 0;
            self.tx_entries[i].desc[2] = 0;
            if i+1 != self.tx_entries.len() {
                self.tx_entries[i].desc[3] = &self.tx_entries[i+1].desc[0] as *const u32 as u32;
            } else {
                self.tx_entries[i].desc[3] = 0;
                // TER
                self.tx_entries[i].desc[0] |= 1 << 21;
            }
        }
        for i in 0..self.rx_entries.len() {
            // OWN
            self.rx_entries[i].desc[0] = 1 << 31;
            // RCH and RBS (buffer size)
            self.rx_entries[i].desc[1] = 1 << 14 | VLAN_MAX_SIZE as u32;
            self.rx_entries[i].desc[2] = self.rx_entries[i].buff.as_ptr() as u32;
            if i+1 != self.rx_entries.len() {
                self.rx_entries[i].desc[3] = &self.rx_entries[i+1].desc[0] as *const u32 as u32;
            } else {
                self.rx_entries[i].desc[3] = 0;
                // RER
                self.rx_entries[i].desc[1] |= 1 << 15;
            }
        }
        let tx_addr = &self.tx_entries[0].desc[0] as *const u32 as u32;
        let rx_addr = &self.rx_entries[0].desc[0] as *const u32 as u32;
        unsafe {
            self.eth.dma.tdlar.write(tx_addr);
            self.eth.dma.rdlar.write(rx_addr);
        }
        self.tx_pos = 0;
        // enable ST, SR
        unsafe {
            self.eth.dma.omr.modify(|v| v | (1 << 13) | (1 << 1));
        }

    }

    pub fn poll(&mut self) -> Result<RxPacket, RxError> {
        let running_state = self.eth.dma.sr.read() & (0b111 << 17) >> 17;
        if running_state != 0b001 && running_state != 0b011 && running_state != 0b101 && running_state != 0b111 {
            unsafe {
                self.eth.dma.rpdr.write(1);
            }
        }

        let rx_len = self.rx_entries.len();
        let result = self.rx_entries[self.rx_pos].poll();
        self.rx_pos += 1;
        self.rx_pos %= rx_len;
        result
    }

    pub fn send<F: FnOnce(&mut [u8]) -> R, R>(&mut self, length: usize, f: F) -> Result<R, TxError> {
        match self.tx_entries[self.tx_pos].get_packet(length) {
            Some(mut pkt) => {
                let r = f(pkt.deref_mut());
                pkt.start_send();
                unsafe {
                    self.eth.dma.tpdr.write(1);
                }

                self.tx_pos += 1;
                self.tx_pos %= self.tx_entries.len();
                Ok(r)
            }
            None =>
                Err(TxError::NoBuffer)
        }
    }

    pub fn is_tx_running(&self) -> bool {
        let running_state = (self.eth.dma.sr.read() & (0b111 << 20)) >> 20;
        match running_state {
            0b001 | 0b010 | 0b011 | 0b111 => true,
            _ => false,
        }
    }
}