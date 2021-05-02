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
        static mut REGS: [u32; 8] = [0; 8];

        unsafe { &mut REGS }
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

#[macro_export]
macro_rules! process_register {
    ($scheduler:expr,$process_manager:expr,$process:expr) => {
        let mut node = util::avl_tree::Node::new($crate::process_manager::ProcessId(0), $process);
        let id = $process_manager.register(&mut node);
        let mut item = $crate::process_list::ProcessListItem::create(id);
        $scheduler.push(&mut item);
    };
    ($scheduler:expr,$process_manager:expr,$process:expr,$id:ident) => {
        let mut node = util::avl_tree::Node::new($crate::process_manager::ProcessId(0), $process);
        let id = $process_manager.register(&mut node);
        let $id = id.0;
        let mut item = $crate::process_list::ProcessListItem::create(id);
        $scheduler.push(&mut item);
    };
}
