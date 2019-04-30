use core::slice::from_raw_parts_mut;

pub struct Process<'a> {
    pub sp: *mut u8,
    pub regs: &'a [u32; 8],
}

impl<'a> Process<'a> {
    pub fn create(entry: u32, sp: u32, regs: &'a [u32; 8]) -> Process {
        let base_frame_ptr = (sp - 0x20) as *mut u32;
        let base_frame = unsafe { from_raw_parts_mut(base_frame_ptr, 8) };
        base_frame[0] = 0; // r0
        base_frame[1] = 2; // r1
        base_frame[2] = 0; // r2
        base_frame[3] = 0; // r3
        base_frame[4] = 0; // r12
        base_frame[5] = 0; // lr(r14)
        base_frame[6] = entry; // return address
        base_frame[7] = 0x01000000; // xpsr, set thumb state
        Process {
            sp: base_frame_ptr as *mut u8,
            regs: regs,
        }
    }
}