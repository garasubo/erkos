use core::option::Option;

use crate::process::Process;
use crate::process_list::{ProcessList, ProcessListItem};
use super::{Scheduler, ExecResult};


pub struct SimpleScheduler<'a> {
    active: ProcessList<'a>,
    waiting: ProcessList<'a>,
}

impl<'a> Scheduler<'a> for SimpleScheduler<'a> {
    fn exec_current_proc<F>(&mut self, mut executer: F) -> ExecResult
      where F : FnMut(&mut Process<'a>)
    {
        if self.active.is_empty() {
            ExecResult::Nothing
        } else {
            let mut process = &mut self.active.head_mut().unwrap().current;

            executer(process);
            ExecResult::Executed
        }
    }

    fn schedule_next(&mut self) {
        if !self.active.is_empty() {
            let mut current = self.active.pop().unwrap();
            self.active.push(current);
        }
    }

    fn resume_list(&mut self, process_list: &mut ProcessList<'a>) {
        self.active.drain(process_list);
    }
}

impl<'a> SimpleScheduler<'a> {
    pub fn create() -> SimpleScheduler<'a> {
        SimpleScheduler {
            active: ProcessList::new(),
            waiting: ProcessList::new(),
        }
    }

    pub fn push(&mut self, proc: &'a mut ProcessListItem<'a>) {
        self.active.push(proc);
    }
}