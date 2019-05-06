use crate::process::Process;

pub mod simple_scheduler;

pub trait Scheduler<'a> {
    fn exec_current_proc<F>(&mut self, mut executer: F) -> ExecResult where F: FnMut(&mut Process<'a>);
    fn schedule_next(&mut self);
}

pub enum ExecResult {
    Nothing,
    Executed,
}
