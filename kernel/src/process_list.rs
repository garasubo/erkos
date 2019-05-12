use crate::process::Process;

pub struct ProcessListItem<'a> {
    pub current: Process<'a>,
    next: Option<&'a mut ProcessListItem<'a>>,
    prev: Option<*mut ProcessListItem<'a>>,
}

pub struct ProcessList<'a> {
    head: Option<&'a mut ProcessListItem<'a>>,
    last: Option<*mut ProcessListItem<'a>>,
}

impl<'a> ProcessList<'a> {
    pub fn new() -> ProcessList<'a> {
        ProcessList {
            head: None,
            last: None,
        }
    }

    pub fn is_empty(&self) -> bool {
        self.head.is_none()
    }

    pub fn pop(&mut self) -> Option<&'a mut ProcessListItem<'a>> {
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

    pub fn push(&mut self, item: &'a mut ProcessListItem<'a>) {
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

    pub fn head_mut(&mut self) -> Option<&mut &'a mut ProcessListItem<'a>> {
        self.head.iter_mut().next()
    }

    pub fn join(&mut self, target: &mut ProcessList<'a>) {
        if self.is_empty() {
            self.head = target.head.take();
            self.last = target.last.take();
        } else {
            let mut tar_head = target.head.take();
            if tar_head.is_some() {
                let tar_head_item = tar_head.iter_mut().next().unwrap();
                let last_ptr = self.last.unwrap();
                tar_head_item.prev.replace(last_ptr);
                unsafe {
                    (*last_ptr).next = tar_head;
                }
                self.last = target.last.take();
            }
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