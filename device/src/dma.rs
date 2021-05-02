use core::marker::PhantomData;
use core::ops::Deref;
use volatile_register::{RO, RW, WO};

#[repr(C)]
pub struct DmaRegisters {
    pub lisr: RO<u32>,
    pub hisr: RO<u32>,
    pub lifcr: WO<u32>,
    pub hifcr: WO<u32>,

    pub s0cr: RW<u32>,
    pub s0ndtr: RW<u32>,
    pub s0par: RW<u32>,
    pub s0m0ar: RW<u32>,
    pub s0m1ar: RW<u32>,
    pub s0fcr: RW<u32>,

    pub s1cr: RW<u32>,
    pub s1ndtr: RW<u32>,
    pub s1par: RW<u32>,
    pub s1m0ar: RW<u32>,
    pub s1m1ar: RW<u32>,
    pub s1fcr: RW<u32>,

    pub s2cr: RW<u32>,
    pub s2ndtr: RW<u32>,
    pub s2par: RW<u32>,
    pub s2m0ar: RW<u32>,
    pub s2m1ar: RW<u32>,
    pub s2fcr: RW<u32>,

    pub s3cr: RW<u32>,
    pub s3ndtr: RW<u32>,
    pub s3par: RW<u32>,
    pub s3m0ar: RW<u32>,
    pub s3m1ar: RW<u32>,
    pub s3fcr: RW<u32>,

    pub s4cr: RW<u32>,
    pub s4ndtr: RW<u32>,
    pub s4par: RW<u32>,
    pub s4m0ar: RW<u32>,
    pub s4m1ar: RW<u32>,
    pub s4fcr: RW<u32>,

    pub s5cr: RW<u32>,
    pub s5ndtr: RW<u32>,
    pub s5par: RW<u32>,
    pub s5m0ar: RW<u32>,
    pub s5m1ar: RW<u32>,
    pub s5fcr: RW<u32>,

    pub s6cr: RW<u32>,
    pub s6ndtr: RW<u32>,
    pub s6par: RW<u32>,
    pub s6m0ar: RW<u32>,
    pub s6m1ar: RW<u32>,
    pub s6fcr: RW<u32>,

    pub s7cr: RW<u32>,
    pub s7ndtr: RW<u32>,
    pub s7par: RW<u32>,
    pub s7m0ar: RW<u32>,
    pub s7m1ar: RW<u32>,
    pub s7fcr: RW<u32>,
}

pub struct Dma {
    base: u32,
}

impl Deref for Dma {
    type Target = DmaRegisters;

    fn deref(&self) -> &Self::Target {
        let registers = self.base as *mut DmaRegisters;
        unsafe { &*registers }
    }
}

impl Dma {
    pub const fn new(base: u32) -> Dma {
        Dma { base }
    }
}

pub trait Client {
    fn transfer(&self, buffer: &'static [u8], dest: u32, channel: u8);
}

pub enum Stream3 {}

pub struct DmaClient<Stream> {
    dma: Dma,
    _data: PhantomData<Stream>,
}

impl DmaClient<Stream3> {
    pub fn dma1_stream3() -> DmaClient<Stream3> {
        DmaClient {
            dma: Dma::new(0x40026000),
            _data: PhantomData,
        }
    }
}

impl Client for DmaClient<Stream3> {
    fn transfer(&self, buffer: &'static [u8], dest: u32, channel: u8) {
        // disable stream
        unsafe {
            self.dma.s3cr.modify(|v| v & !1);
        }
        // wait for previous steam completion
        while self.dma.s3cr.read() & 1 > 0 {}
        unsafe {
            // clear interrupt
            self.dma.lifcr.write(0b11 << 26);
            // set peripheral port address
            self.dma.s3par.write(dest);
            // set memory address
            self.dma.s3m0ar.write(&buffer[0] as *const u8 as u32);
            // set the number of items
            self.dma.s3ndtr.write(buffer.len() as u32);
            // set the channel
            self.dma
                .s3cr
                .modify(|r| r & !(0b11 << 25) | ((channel as u32) << 25));
            // set direction
            self.dma.s3cr.modify(|r| r & !(0b11 << 6) | (0b01 << 6)); // memory to peripheral
                                                                      // set increment mode
            self.dma.s3cr.modify(|r| r | (1 << 10)); // memory increment
            self.dma.s3cr.modify(|r| r & !(1 << 9)); // peripheral not increment
                                                     // set data length
            self.dma.s3cr.modify(|r| r & !(0b11 << 11)); // psize is byte
            self.dma.s3cr.modify(|r| r & !(0b11 << 13)); // msize is byte
                                                         // set transmit complete interrupt enable
                                                         // self.dma.s3cr.modify(|r| r | (1 << 4));

            // enable dma
            self.dma.s3cr.modify(|r| r | 1);
        }
    }
}
