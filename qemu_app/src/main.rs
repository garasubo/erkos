#![no_std]
#![no_main]
#![feature(asm)]

use core::fmt::{Write as _};
use core::marker::PhantomData;
use cortex_m_semihosting::{debug, hio};
use cortex_m_semihosting::hio::HStdout;
use embedded_hal::serial::Write;
use rt::entry;
use arch::nvic::Nvic;
use kernel::process_create;
use kernel::process::Process;
use kernel::scheduler::simple_scheduler::{SimpleScheduler};
use kernel::scheduler::{Scheduler};
use kernel::process_list::ProcessListItem;
use kernel::interrupt_manager::InterruptManager;
use kernel::kernel::Kernel;
use kernel::process_manager::{ProcessId, ProcessManager};
use util::binary_tree::Node;

entry!(main);

struct SemihostSerial { hstdout: HStdout }

impl Write<char> for SemihostSerial {
    type Error = PhantomData<SemihostSerial>;

    fn write(&mut self, c: char) -> nb::Result<(), Self::Error>{
        self.hstdout.write_all(&[c as u8]);
        Ok(())
    }

    fn flush(&mut self) -> nb::Result<(), Self::Error> {
        Ok(())
    }
}

fn main() -> ! {
    let mut hstdout = hio::hstdout().unwrap();

    writeln!(hstdout, "hello world");

    let nvic = Nvic::new();

    let mut scheduler = SimpleScheduler::new();
    let serial = SemihostSerial { hstdout };
    let interrupt_manager = InterruptManager::create(nvic);
    let mut process_manager = ProcessManager::new();
    let process = process_create!(app_main, 1024);
    let mut node = Node::new(ProcessId(0), process);
    let mut item = ProcessListItem::create(process_manager.register(&mut node));
    scheduler.push(&mut item);

    let mut kernel = Kernel::create(scheduler, serial, interrupt_manager, process_manager);

    kernel.run()
}

extern "C" fn app_main() -> ! {
    let message: &str = "app_main\n";
    let message_ptr = message.as_ptr();
    let length = message.bytes().len();
    unsafe {
        asm!(
            "
            mov r0, #1
            svc 1
            "
        ::"{r1}"(message_ptr), "{r2}"(length)::"volatile");
    }
    debug::exit(debug::EXIT_SUCCESS);
    loop {}
}