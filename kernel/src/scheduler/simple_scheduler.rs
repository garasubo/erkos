use core::option::Option;

use crate::process::Process;
use super::{Scheduler, ExecResult};

pub struct ProcessListItem<'a> {
    current: Process<'a>,
    next: Option<&'a mut ProcessListItem<'a>>,
    prev: Option<*mut ProcessListItem<'a>>,
}

pub struct ProcessList<'a> {
    head: Option<&'a mut ProcessListItem<'a>>,
    last: Option<*mut ProcessListItem<'a>>,
}

impl<'a> ProcessList<'a> {
    fn new() -> ProcessList<'a> {
        ProcessList {
            head: None,
            last: None,
        }
    }

    fn is_empty(&self) -> bool {
        self.head.is_none()
    }

    fn pop(&mut self) -> Option<&'a mut ProcessListItem<'a>> {
        let next = match self.head.iter_mut().next() {
            Some(item) => {
                let mut result = (*item).next.take();
                match result.iter_mut().next() {
                    Some(item) => {
                        (*item).prev = None;
                    },
                    None => {},
                }
                result
            },
            None => { panic!("empty list");},
        };
        let result = self.head.take();
        if next.is_none() {
            self.last = None;
        }
        self.head = next;
        result
    }

    fn push(&mut self, item: &'a mut ProcessListItem<'a>) {
        if self.last.is_none() {
            let item_ptr = item as *mut ProcessListItem;
            item.prev = None;
            item.next = None;
            self.last.replace(item_ptr);
            self.head.replace(item);
        } else {
            let last_ptr = self.last.unwrap();
            let item_ptr = item as *mut ProcessListItem;
            self.last.replace(item_ptr);
            item.prev.replace(last_ptr);
            unsafe { (*last_ptr).next.replace(item); }
        }
    }
}

impl<'a> ProcessListItem<'a> {
    pub fn create(process: Process<'a>) -> ProcessListItem<'a> {
        ProcessListItem {
            current: process,
            next: None,
            prev: None,
        }
    }
}

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
            let mut process = &mut self.active.head.iter_mut().next().unwrap().current;

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