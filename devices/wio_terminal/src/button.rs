use crate::pin::Pin;
use crate::port::{Port, PortC};

pub struct Button<'a, P> {
    pin: &'a P
}

type PC26<'a> = Pin<'a, PortC, 26>;
type PC27<'a> = Pin<'a, PortC, 27>;
type PC28<'a> = Pin<'a, PortC, 28>;

impl<'a> Button<'a, PC26> {
    pub fn init(pin: &'a PC26) -> Self {
        pin.clear_dir();
        Self { pin }
    }
}