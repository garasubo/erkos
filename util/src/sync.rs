use core::cell::UnsafeCell;
use lock_api::{RawMutex, Mutex, GuardSend};

pub struct RawUnsafeLock {}

unsafe impl RawMutex for RawUnsafeLock {
    const INIT: Self = Self {};
    // A spinlock guard can be sent to another thread and unlocked there
    type GuardMarker = GuardSend;

    fn lock(&self) {
    }

    fn try_lock(&self) -> bool {
        true
    }

    unsafe fn unlock(&self) {
    }
}

pub type UnsafeLock<T> = lock_api::Mutex<RawUnsafeLock, T>;
pub type UnsafeLockGuard<'a, T> = lock_api::MutexGuard<'a, RawUnsafeLock, T>;

// LDREX