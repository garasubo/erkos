use core::mem::MaybeUninit;
use core::ptr::NonNull;

use alloc::alloc::{GlobalAlloc, Layout};
use crate::sync::UnsafeLock;

const LIST_LEN: usize = 5;

struct FreeArea {
    next: Option<NonNull<u8>>,
}

impl FreeArea {
    const fn new() -> Self {
        Self {
            next: None,
        }
    }
}

unsafe impl Send for FreeArea {}


struct Allocator {
    free_list_head: [FreeArea; LIST_LEN],
}

const MIN_BASE_SIZE: usize = core::mem::size_of::<FreeArea>();
const MAX_BASE_SIZE: usize = MIN_BASE_SIZE << (LIST_LEN - 1);

impl Allocator {
    pub const fn new() -> Self {
        let mut result = Self {
            free_list_head: [FreeArea::new(), FreeArea::new(), FreeArea::new(), FreeArea::new(), FreeArea::new()],
        };

        result
    }

    pub fn init(&mut self, heap_start: usize, heap_end: usize) {
        self.add_area(heap_start, heap_end);
    }

    fn push_area_to_list(&mut self, idx: usize, addr: usize) {
        let mut prev = &mut self.free_list_head[idx] as *mut _;
        let mut next = self.free_list_head[idx].next;
        while next.is_some() {
            let next_ptr = next.as_ref().unwrap().as_ptr();
            if next_ptr as usize > addr {
                break;
            }
            prev = unsafe { &mut *(next_ptr as *mut FreeArea) };
            next = unsafe { (&*(next_ptr as *mut FreeArea)).next };
        }
        let new_area = unsafe { &mut *(addr as *mut FreeArea) };
        unsafe {
            (*prev).next = Some(NonNull::new_unchecked(new_area as *mut _ as *mut u8));
        }
        new_area.next = next;
    }

    pub fn add_area(&mut self, heap_start: usize, heap_end: usize) {
        let heap_start = (heap_start + MIN_BASE_SIZE - 1) / MIN_BASE_SIZE * MIN_BASE_SIZE;
        let mut current = heap_start;
        let mut idx = 0;


        // align to max base size
        while current + (MIN_BASE_SIZE << idx) <= heap_end && idx < LIST_LEN {
            let base_size = MIN_BASE_SIZE << idx;
            let next_base_size = base_size * 2;
            if current % next_base_size > 0 {
                self.push_area_to_list(idx, current);
                current += base_size;
            }
            idx += 1;
        }
        while current + MAX_BASE_SIZE <= heap_end && idx < LIST_LEN {
            self.push_area_to_list(idx, current);
            current += MAX_BASE_SIZE;
        }
        // allocate rest of area
        idx = 0;
        while current + (MIN_BASE_SIZE << idx) <= heap_end && idx < LIST_LEN {
            let base_size = MIN_BASE_SIZE << idx;
            let next_base_size = base_size * 2;
            if current % next_base_size > 0 {
                self.push_area_to_list(idx, current);
                current += base_size;
            }
            idx += 1;
        }
    }

    fn allocate(&mut self, layout: Layout) -> *mut u8 {
        let size = layout.size();
        let align = layout.align();
        let mut idx = 0;
        while (MIN_BASE_SIZE << idx) < size && idx < LIST_LEN {
            idx += 1;
        }
        
        let min_idx = idx;
        while idx < LIST_LEN {
            let target_list = &mut self.free_list_head[idx];
            let mut flag = false;
            let mut prev = target_list as *mut _  as *mut u8;
            let mut next = target_list.next;
            while next.is_some() {
                let next_ptr = next.as_ref().unwrap().as_ptr();
                if (next_ptr as usize) % align == 0 {
                    flag = true;
                    break;
                }
            }
            if flag {
                let next_ptr = next.as_ref().unwrap().as_ptr();
                unsafe {
                    (*(prev as *mut FreeArea)).next = (*(next_ptr as *mut FreeArea)).next;
                }
                if idx > min_idx {
                    let tail_start = (next_ptr as usize) + (MIN_BASE_SIZE << min_idx);
                    let tail_end = (next_ptr as usize) + (MIN_BASE_SIZE << idx);
                    self.add_area(tail_start, tail_end);
                }
                return next_ptr;

            }


            idx += 1;
        }

        core::ptr::null_mut()

    }
}

pub struct LockedAllocator(UnsafeLock<Allocator>);

impl LockedAllocator {
    pub const fn new() -> Self {
        Self(UnsafeLock::new(Allocator::new()))
    }

    pub fn add_area(&self, heap_start: usize, heap_end: usize) {
        self.0.lock().add_area(heap_start, heap_end);
    }
}

unsafe impl GlobalAlloc for LockedAllocator {
    unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
        let mut lock = self.0.lock();
        lock.allocate(layout)
    }

    unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout) {
        let heap_start = ptr as usize;
        let heap_end = heap_start + (layout.size() + MIN_BASE_SIZE - 1) / MIN_BASE_SIZE * MIN_BASE_SIZE;
        self.add_area(ptr, ptr + layout.size());
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use alloc::boxed::Box;


    #[test]
    fn test_new() {
        const size: usize = MIN_BASE_SIZE << (LIST_LEN + 1);
        let b = Box::new([0u8; size]);
        let heap_start = Box::into_raw(b) as usize;
        let heap_end = heap_start + size;
        let mut allocator = Allocator::new();

        allocator.add_area(heap_start, heap_end);
    }
}
