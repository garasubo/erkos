#![no_std]
#![no_main]
#![feature(llvm_asm)]

use arch::nvic::Nvic;
use core::fmt::Write as _;
use core::marker::PhantomData;
use cortex_m_semihosting::hio::HStdout;
use cortex_m_semihosting::{debug, hio};
use embedded_hal::serial::Write;
use kernel::interrupt_manager::InterruptManager;
use kernel::kernel::Kernel;
use kernel::message_manager::MessageManager;
use kernel::process::Process;
use kernel::process_list::ProcessListItem;
use kernel::process_manager::{ProcessId, ProcessManager};
use kernel::scheduler::simple_scheduler::SimpleScheduler;
use kernel::scheduler::Scheduler;
use kernel::{process_create, process_register};
use log::dhprintln;
use rt::entry;
use rt::Vector;
use user::syscall::{dormant, wait_for_event, wait_for_interrupt};
use util::avl_tree::Node;
use util::linked_list::ListItem;

entry!(main);
#[link_section = ".irq_table"]
#[used]
#[no_mangle]
pub static mut IRQS: [Vector; 1] = [
    Vector { reserved: 0 }, // WWDG (0)
];

struct SemihostSerial {
    hstdout: HStdout,
}

impl Write<char> for SemihostSerial {
    type Error = PhantomData<SemihostSerial>;

    fn write(&mut self, c: char) -> nb::Result<(), Self::Error> {
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
    let mut interrupt_manager = InterruptManager::create(nvic);
    let mut process_manager = ProcessManager::new();
    let process = process_create!(app_main, 1024);
    let process2 = process_create!(app_main2, 1024);
    let process3 = process_create!(app_main3, 1024);
    let process4 = process_create!(app_main4, 1024);
    process_register!(scheduler, process_manager, process);
    process_register!(scheduler, process_manager, process2);
    process_register!(scheduler, process_manager, process3);
    process_register!(scheduler, process_manager, process4);
    interrupt_manager.register(0, nothing);

    let mut message_buff: [ListItem<u32>; 32] = unsafe { core::mem::uninitialized() };
    let message_manager = MessageManager::new(&mut message_buff);
    let mut kernel = Kernel::create(
        scheduler,
        serial,
        interrupt_manager,
        process_manager,
        message_manager,
    );

    kernel.run()
}

fn nothing() {}

fn fib(n: usize) -> usize {
    dhprintln!("fib called");
    if n <= 1 {
        1
    } else {
        fib(n - 1) + fib(n - 2)
    }
}

extern "C" fn app_main() -> ! {
    let message: &str = "app_main\n";
    let message_ptr = message.as_ptr();
    let length = message.bytes().len();
    dhprintln!("fib {}: {}", 5, fib(5));
    unsafe {
        llvm_asm!(
            "
            mov r0, #1
            svc 1
            "
        ::"{r1}"(message_ptr), "{r2}"(length)::"volatile");
    }
    wait_for_event();
    dhprintln!("fib {}: {}", 8, fib(8));
    dormant();
    loop {}
}
extern "C" fn app_main2() -> ! {
    dhprintln!("fib {}: {}", 6, fib(6));
    wait_for_event();
    dhprintln!("fib {}: {}", 9, fib(9));
    wait_for_event();
    debug::exit(debug::EXIT_SUCCESS);

    loop {
        dormant();
    }
}

extern "C" fn app_main3() -> ! {
    dhprintln!("fib {}: {}", 7, fib(7));
    wait_for_event();
    dhprintln!("fib {}: {}", 10, fib(10));
    loop {
        dormant();
    }
}

extern "C" fn app_main4() -> ! {
    wait_for_interrupt(0);
    loop {
        dormant();
    }
}
