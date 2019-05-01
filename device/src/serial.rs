extern crate embedded_hal as hal;
use vcell::VolatileCell;
use volatile_register::RW;

use crate::gpio::Gpio;

pub struct Serial<U> { usart: U }

pub enum Error {
    Overrun,
}

pub struct Usart {
    registers: *mut UsartRegisters,
}

#[repr(C)]
pub struct UsartRegisters {
    sr: RW<u32>,
    dr: RW<u32>,
    brr: RW<u32>,
    cr1: RW<u32>,
    cr2: RW<u32>,
    cr3: RW<u32>,
    gtpr: RW<u32>,
}

impl Usart {
    pub fn new(base: usize) -> Usart {
        Usart { registers: base as *mut UsartRegisters }
    }

    pub fn get_registers_ref(&self) -> &UsartRegisters {
        unsafe { &*self.registers }
    }
}

impl hal::serial::Read<char> for Serial<Usart> {
    type Error = Error;

    fn read(&mut self) -> nb::Result<char, Error> {
        let registers = self.usart.get_registers_ref();

        while (registers.sr.read() & (1 << 5)) == 0 { 
        }
        let c = registers.dr.read() as u8 as char;
        if c == '\r' {
            Ok('\n')
        } else {
            Ok(c)
        }
    }
}

impl hal::serial::Write<char> for Serial<Usart> {
    type Error = Error;

    fn write(&mut self, c: char) -> nb::Result<(), Error>{
        let registers = self.usart.get_registers_ref();
        if c == '\n' {
            while (registers.sr.read() & (1 << 7)) == 0 { }
            unsafe {
                registers.dr.write('\r' as u32);
            }
        }
        while (registers.sr.read() & (1 << 7)) == 0 { }
        unsafe {
            registers.dr.write(c as u32);
        }
        Ok(())
    }

    fn flush(&mut self) -> nb::Result<(), Error> {
        let registers = self.usart.get_registers_ref();
        while (registers.sr.read() & (1 << 7)) == 0 { }
        Ok(())
    }
}

impl Serial<Usart> {
    pub fn usart3() -> Serial<Usart> {
        let gpio = Gpio::new(0x40020c00);
        let registers = gpio.get_registers_ref();
        unsafe {
            registers.moder.write((0x2 << 16) | (0x2 << 18));
            registers.afrh.write(0x7 | (0x7 << 4));
        }
        /*
        // GPIOD
        gpio.deref().moder.modify(|_, w| {
            w.moder8().bits(0x2);
            w.moder9().bits(0x2)
        }); 
        gpio.deref().afrh.modify(|_, w| unsafe {
            w.afrh8().bits(0x7);
            w.afrh9().bits(0x7)
        });
        */
        // f = 16MHz, baud rate = 9600 BPS

        let usart = Usart::new(0x40004800);
        let registers = usart.get_registers_ref();
        unsafe {
            registers.brr.write(0x683);
            registers.cr1.write((1 << 5) | (1  << 3) | (1 << 2) | (1 << 13));
        }

        Serial { usart }
    }
}