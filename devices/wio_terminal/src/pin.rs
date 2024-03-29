use crate::port::{Port, PortC, PinCfg};

pub struct Pin<'a, P, const N: u8> {
    port: &'a Port<P>,
}

impl<'a, const N: u8> Pin<'a, PortC, N> {
    pub fn new(port: &'a Port<PortC>) -> Self {
        Self {
            port,
        }
    }

    pub fn clear_dir(&self) {
        unsafe {
            self.port.dirclr.write(1 << N);
        }
    }
    
    pub fn set_dir(&self) {
        unsafe {
            self.port.dirset.write(1 << N);
        }
    }

    pub fn in_(&self) -> bool {
        (self.port.in_.read() & (1 << N)) > 0
    }

    pub fn pincfg(&self) -> &PinCfg {
        &self.port.pincfg[N as usize]
    }
}
