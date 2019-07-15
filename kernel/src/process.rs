use core::slice::from_raw_parts_mut;
use util::linked_list::{LinkedList, ListItem};

#[derive(PartialEq)]
pub enum ProcessState {
    READY,
    RUNNING,
    WAITING,
    DORMANT,
}

pub struct Process<'a> {
    pub sp: *mut u8,
    pub regs: &'a [u32; 8],
    pub state: ProcessState,
    pub message_queue: LinkedList<'a, u32>,
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
            state: ProcessState::DORMANT,
            message_queue: LinkedList::new(),
        }
    }

    pub fn execute(&mut self) {
        let mut sp = self.sp;
        let regs = self.regs;
        self.state = ProcessState::RUNNING;
        unsafe {
            asm!(
                "
                msr psp, $0
                ldmia $2, {r4-r11}
                cpsie i
                svc 0
                cpsid i
                stmia $2, {r4-r11}
                mrs $0, psp
                "
                :"={r0}"(sp): "{r0}"(sp),"{r1}"(regs)
                :"r4","r5","r6","r7","r8","r9","r10","r11","memory":"volatile"
            );
        }
        self.sp = sp;
    }
}