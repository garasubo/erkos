use crate::process_manager::ProcessId;
use util::linked_list::{LinkedList, ListItem};

pub type ProcessListItem<'a> = ListItem<'a, ProcessId>;
pub type ProcessList<'a> = LinkedList<'a, ProcessId>;
