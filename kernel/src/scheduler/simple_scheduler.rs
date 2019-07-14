use core::option::Option;
use core::ops::DerefMut;

use crate::process_manager::ProcessId;
use crate::process_list::ProcessListItem;
use super::{Scheduler, ExecResult};
use util::linked_list::{LinkedList, ListItem};

pub struct SimpleScheduler<'a> {
    active: LinkedList<'a, ProcessId>,
    waiting: LinkedList<'a, ProcessId>,
}

impl<'a> Scheduler<'a> for SimpleScheduler<'a> {
    fn get_current_proc(&mut self) -> Option<&mut ProcessId> {
        self.active.head_mut().map(|item| (*item).deref_mut())
    }
    
    fn pop_current_proc(&mut self) -> Option<&'a mut ProcessListItem<'a>> {
        self.active.pop()
    }

    fn schedule_next(&mut self) {
        if !self.active.is_empty() {
            let current = self.active.pop().unwrap();
            self.active.push(current);
        }
    }

    fn resume_list(&mut self, process_list: &mut LinkedList<'a, ProcessId>) {
        self.active.join(process_list);
    }

    fn push(&mut self, proc: &'a mut ListItem<'a, ProcessId>) {
        self.active.push(proc);
    }

    fn push_wait(&mut self, proc: &'a mut ListItem<'a, ProcessId>) {
        self.waiting.push(proc);
    }

    fn resume_waiting(&mut self) {
        self.active.join(&mut self.waiting);
    }
}

impl<'a> SimpleScheduler<'a> {
    pub fn new() -> SimpleScheduler<'a> {
        SimpleScheduler {
            active: LinkedList::new(),
            waiting: LinkedList::new(),
        }
    }

}