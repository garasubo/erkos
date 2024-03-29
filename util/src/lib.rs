#![no_std]
#![crate_type = "rlib"]
#![feature(const_maybe_uninit_assume_init)]

pub mod avl_tree;
pub mod binary_tree;
pub mod linked_list;
#[cfg(feature = "alloc")]
pub mod allocator;
pub mod sync;

#[cfg(feature = "alloc")]
extern crate alloc;

// copied from https://github.com/tock/tock
macro_rules! static_init {
    ($T:ty, $e:expr) => {
        // Ideally we could use mem::size_of<$T>, uninitialized or zerod here
        // instead of having an `Option`, however that is not currently possible
        // in Rust, so in some cases we're wasting up to a word.
        {
            use core::{mem, ptr};
            // Statically allocate a read-write buffer for the value, write our
            // initial value into it (without dropping the initial zeros) and
            // return a reference to it.
            static mut BUF: Option<$T> = None;
            let tmp : &'static mut $T = mem::transmute(&mut BUF);
            ptr::write(tmp as *mut $T, $e);
            tmp
        };
    }
}
