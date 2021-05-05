use crate::port::{Port, PortA};

pub struct Led<'a, T> {
    port: &'a Port<T>
}

pub type UserLed<'a> = Led<'a, PortA>;

impl<'a> Led<'a, PortA> {
    pub fn init(port: &'a Port<PortA>) -> Self {
        unsafe {
            port.dir.modify(|val| val | (1 << 15));
        }
        port.pincfg[15].set_pullen();
        Led {
            port,
        }
    }

    pub fn set(&self) {
        unsafe {
            self.port.outset.write(1 << 15);
        }
    }

    pub fn clear(&self) {
        unsafe {
            self.port.outclr.write(1 << 15);
        }
    }
}