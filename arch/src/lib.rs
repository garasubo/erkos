#![no_std]

pub mod nvic;
pub mod systick;

#[repr(C)]
pub struct StackFrame {
    pub r0: u32,
    pub r1: u32,
    pub r2: u32,
    pub r3: u32,
    pub r12: u32,
    pub lr: u32,
    pub return_addr: u32,
    pub xpsr: u32,
}

impl StackFrame {
    pub unsafe fn from_ptr_mut<'a>(sp: *const u32) -> &'a mut StackFrame {
        &mut *(sp as *mut StackFrame)
    }
    pub unsafe fn from_ptr<'a>(sp: *const u32) -> &'a StackFrame {
        &*(sp as *const StackFrame)
    }
}
