use crate::process::Process;
use crate::process_list::ProcessList;

pub mod simple_scheduler;

pub trait Scheduler<'a> {
    fn exec_current_proc<F>(&mut self, mut executer: F) -> ExecResult where F: FnMut(&mut Process<'a>);
    fn schedule_next(&mut self);
    fn resume_list(&mut self, process_list: &mut ProcessList<'a>);
}

pub enum ExecResult {
    Nothing,
    Executed,
}
