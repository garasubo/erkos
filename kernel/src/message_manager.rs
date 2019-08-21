use crate::process_manager::{ProcessManager, ProcessId};
use crate::process::Process;
use util::linked_list::{LinkedList, ListItem};
use core::cell::RefCell;

pub struct MessageManager<'a> {
    buff: LinkedList<'a, u32>,    
}

impl<'a> MessageManager<'a> {
    pub fn new(buff: &'a mut [ListItem<'a, u32>]) -> MessageManager<'a> {
        let mut list = LinkedList::new();
        for item in buff.iter_mut() {
            list.push(item);
        }

        MessageManager {
            buff: list,
        }
    }

    pub fn send_message(&mut self, process: &'a mut Process<'a>, message: u32) -> bool {
        if self.buff.is_empty() {
            return false;
        }
        
        let mut item = self.buff.pop().unwrap();
        item.item = message;
        process.message_queue.push(item);

        true
    }

    pub fn receive_message(&mut self, process: &'a mut Process<'a>) -> Option<u32> {
        if process.message_queue.is_empty() {
            return None;
        }

        let item = process.message_queue.pop().unwrap();
        let result = Some(item.item);

        self.buff.push(item);

        result
    }
}