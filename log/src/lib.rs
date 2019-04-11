#![no_std]

pub trait Log {
    type Error;

    fn log(&mut self, address: u8) -> Result<(), Self::Error>;
}

#[macro_export]
macro_rules! log {
    ($logger:expr, $string:expr) => {{
        #[export_name = $string]
        #[link_section = ".log"]
        static SYMBOL: u8 = 0;

        $crate::Log::log(&mut $logger, &SYMBOL as *const u8 as usize as u8)
    }};
}

#[cfg(debug_assertions)]
#[macro_export]
macro_rules! debug {
    ($logger:expr, $string:expr) => {{
        #[export_name = $string]
        #[link_section = ".log"]
        static SYMBOL: u8 = 0;

        $crate::Log::log(&mut $logger, &SYMBOL as *const u8 as usize as u8)
    }};
}

#[cfg(not(debug_assertions))]
#[macro_export]
macro_rules! debug {
    ($logger:expr, $string:expr) => {{  }};
}

#[cfg(debug_assertions)]
#[macro_export]
macro_rules! dhprintln {
    () => {
        cortex_m_semihosting::hprintln!("\n").unwrap()
    };
    ($s:expr) => {
        cortex_m_semihosting::hprintln!($s).unwrap()
    };
    ($s:expr, $($tt:tt)*) => {
        cortex_m_semihosting::hprintln!($s, $($tt)*).unwrap()
    };
}

#[cfg(not(debug_assertions))]
#[macro_export]
macro_rules! dhprintln {
    () => {};
    ($s:expr) => {};
    ($s:expr, $($tt:tt)*) => {};
}
