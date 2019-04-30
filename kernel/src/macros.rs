#[macro_export]
macro_rules! stack_allocate {
    ($n:expr) => {{
        #[link_section = ".uninit"]
        static mut STACK: [u8; $n] = [0; $n];

        unsafe { &STACK[0] as *const u8 as u32 + $n }
    }};
}

#[macro_export]
macro_rules! reg_allocate {
    () => {{
        #[link_section = ".uninit"]
        static mut REGS: [u32; 8] = [0; 8];

        unsafe { &REGS }
    }};
}

#[macro_export]
macro_rules! process_create {
    ($entry:expr,$n:expr) => {{
        let entry = $entry as u32;
        let sp = $crate::stack_allocate!($n);
        let regs = $crate::reg_allocate!();
        Process::create(entry, sp, regs)
    }};
}