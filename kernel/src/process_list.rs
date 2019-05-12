use crate::process::Process;
use util::linked_list::{LinkedList, ListItem};

pub type ProcessListItem<'a> = ListItem<'a, Process<'a>>;
pub type ProcessList<'a> = LinkedList<'a, Process<'a>>;
