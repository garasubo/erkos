use crate::pin::Pin;
use crate::port::PortC;

pub struct Button<'a, P> {
    pin: &'a P
}

type PC26<'a> = Pin<'a, PortC, 26>;
type PC27<'a> = Pin<'a, PortC, 27>;
type PC28<'a> = Pin<'a, PortC, 28>;

pub type UserButton1<'a> = Button<'a, PC26<'a>>;
pub type UserButton2<'a> = Button<'a, PC27<'a>>;
pub type UserButton3<'a> = Button<'a, PC28<'a>>;

impl<'a> Button<'a, PC26<'a>> {
    pub fn init(pin: &'a PC26) -> Self {
        pin.clear_dir();
        pin.pincfg().set_inen();
        pin.pincfg().set_pullen();
        Self { pin }
    }

    pub fn is_pressed(&self) -> bool {
        !self.pin.in_()
    }
    
    pub fn is_released(&self) -> bool {
        self.pin.in_()
    }
}

impl<'a> Button<'a, PC27<'a>> {
    pub fn init(pin: &'a PC27) -> Self {
        pin.clear_dir();
        pin.pincfg().set_inen();
        pin.pincfg().set_pullen();
        Self { pin }
    }
}

impl<'a> Button<'a, PC28<'a>> {
    pub fn init(pin: &'a PC28) -> Self {
        pin.clear_dir();
        pin.pincfg().set_inen();
        pin.pincfg().set_pullen();
        Self { pin }
    }
}