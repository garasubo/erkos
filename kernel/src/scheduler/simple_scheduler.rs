use core::option::Option;

use crate::process::Process;
use super::{Scheduler, ExecResult};

pub struct ProcessList<'a> {
    current: Process<'a>,
    next: Option<&'a mut ProcessList<'a>>,
}

impl<'a> ProcessList<'a> {
    pub fn create(process: Process<'a>) -> ProcessList<'a> {
        ProcessList {
            current: process,
            next: None,
        }
    }
}

pub struct SimpleScheduler<'a> {
    procs: Option<&'a mut ProcessList<'a>>,
    last: Option<*mut ProcessList<'a>>,
}

impl<'a> Scheduler<'a> for SimpleScheduler<'a> {
    fn exec_current_proc<F>(&mut self, mut executer: F) -> ExecResult
      where F : FnMut(&mut Process<'a>)
    {
        match self.procs.iter_mut().next() {
            Some(current_item) => {
                let process = &mut (current_item.current);
                executer(process);
                ExecResult::Executed
            },
            None => ExecResult::Nothing,
        }
    }

    fn schedule_next(&mut self) {
        if self.procs.is_some() {
            let current = self.procs.take().unwrap();
            let next = current.next.take();
            if next.is_some() {
                let current_ptr = current as *mut ProcessList;
                let last = self.last.take();
                match last.iter().next() {
                    Some(item) => {
                        unsafe { (*(*item)).next.replace(current); }
                    },
                    None => {},
                };
                self.procs = next;
                self.last.replace(current_ptr);
            } else {
                self.procs.replace(current);
            }
            
        }
    }

}

impl<'a> SimpleScheduler<'a> {
    pub fn create() -> SimpleScheduler<'a> {
        SimpleScheduler {
            procs: None,
            last: None,
        }
    }

    pub fn push(&mut self, proc: &'a mut ProcessList<'a>) {
        if self.last.is_none() {
            let proc_ptr = proc as *mut ProcessList;
            self.procs.replace(proc);
            self.last.replace(proc_ptr);
        } else {
            let last_ptr = self.last.unwrap();
            let proc_ptr = proc as *mut ProcessList;
            self.last.replace(proc_ptr);
            unsafe { (*last_ptr).next.replace(proc); }
        }
    }
}