use core::ptr::NonNull;

use alloc::alloc::{GlobalAlloc, Layout};
use crate::sync::UnsafeLock;

const LIST_LEN: usize = 5;

struct FreeArea {
    next: Option<NonNull<u8>>,
    _marker: core::marker::PhantomPinned,
}

impl FreeArea {
    const fn new() -> Self {
        Self {
            next: None,
            _marker: core::marker::PhantomPinned,
        }
    }

    fn as_mut(&mut self) -> *mut Self {
        self as *mut _
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
        Self {
            free_list_head: [FreeArea::new(), FreeArea::new(), FreeArea::new(), FreeArea::new(), FreeArea::new()],
        }
    }

    pub fn init(&mut self, heap_start: usize, heap_end: usize) {
        self.add_area(heap_start, heap_end);
    }

    fn optimize_area(&mut self, idx: usize) {
        let size = MIN_BASE_SIZE << idx;
        if self.free_list_head[idx].next.is_some() {
            let mut prev_ptr = self.free_list_head[idx].as_mut();
            let mut tar = unsafe { &mut *(self.free_list_head[idx].next.as_ref().unwrap().as_ptr() as *mut FreeArea) };
            while tar.next.is_some() {
                let tar_ptr = tar.as_mut();
                let next_ptr = tar.next.as_ref().unwrap().as_ptr() as *mut FreeArea;
                if tar_ptr as usize + size == next_ptr as usize {
                    unsafe {
                        (*prev_ptr).next = (*next_ptr).next;
                    }
                    self.push_area_to_list(idx+1, tar_ptr as usize);
                    break;
                }
                prev_ptr = tar_ptr;
                tar = unsafe { &mut *(next_ptr as *mut FreeArea) };
            }
        }
    }

    fn push_area_to_list(&mut self, idx: usize, addr: usize) {
        let mut prev = self.free_list_head[idx].as_mut();
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

        // join consecutive areas
        if idx < LIST_LEN - 1 {
            self.optimize_area(idx);
        }
    }

    pub fn add_area(&mut self, heap_start: usize, heap_end: usize) {
        let heap_start = (heap_start + MIN_BASE_SIZE - 1) / MIN_BASE_SIZE * MIN_BASE_SIZE;
        let mut current = heap_start;
        let mut idx = 0;


        // align to max base size
        while current + (MIN_BASE_SIZE << idx) <= heap_end && idx < LIST_LEN - 1 {
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
        idx += 1;
        while current < heap_end && idx > 0 {
            idx -= 1;
            let base_size = MIN_BASE_SIZE << idx;
            if ((heap_end - current) & base_size) > 0 {
                self.push_area_to_list(idx, current);
                current += base_size;
            }
        }
    }

    fn alloc(&mut self, layout: Layout) -> *mut u8 {
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
                if (next_ptr as usize) % align + size <= (MIN_BASE_SIZE << idx) {
                    flag = true;
                    break;
                }
                prev = next_ptr;
                next = unsafe { &*(prev as *mut FreeArea) }.next;
            }
            if flag {
                let next_ptr = next.as_ref().unwrap().as_ptr();
                unsafe {
                    (*(prev as *mut FreeArea)).next = (*(next_ptr as *mut FreeArea)).next.take();
                }
                let next_addr = next_ptr as usize;
                let tar_addr = (next_addr + align - 1) / align * align;
                let tar_end = tar_addr + (MIN_BASE_SIZE << min_idx);
                let next_end = next_addr + (MIN_BASE_SIZE << idx);
                if tar_addr > next_addr {
                    self.add_area(next_addr, tar_addr);
                }
                if next_end > tar_end {
                    self.add_area(tar_end, next_end);
                }
                return next_ptr;
            }


            idx += 1;
        }

        core::ptr::null_mut()
    }

    fn dealloc(&mut self, ptr: *mut u8, layout: Layout) {
        let heap_start = ptr as usize;
        let heap_end = heap_start + (layout.size() + MIN_BASE_SIZE - 1) / MIN_BASE_SIZE * MIN_BASE_SIZE;
        self.add_area(heap_start, heap_end);
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
        lock.alloc(layout)
    }

    unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout) {
        let mut lock = self.0.lock();
        lock.dealloc(ptr, layout);
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use alloc::vec;
    use array_init::array_init;
    use rand::{Rng, SeedableRng, StdRng};
    extern crate std;

    #[repr(align(16))]
    pub struct AlignedStruct(u32);


    #[test]
    fn test_small() {
        let b = [0u8; 1024];
        let heap_start = &b[0] as *const u8 as usize;
        let heap_end = heap_start + 1024;
        let mut allocator = Allocator::new();

        allocator.add_area(heap_start, heap_end);

        let mem1 = allocator.alloc(Layout::new::<u64>());
        let mem2 = allocator.alloc(Layout::new::<u128>());
        let mem3 = allocator.alloc(Layout::new::<u32>());
        let mem4 = allocator.alloc(Layout::new::<AlignedStruct>());

        assert_ne!(mem1, mem2);
        assert_ne!(mem2, mem3);
        assert_ne!(mem3, mem2);
        assert!(mem4 as usize % 16 == 0);

        let val1: &mut u64 = unsafe { &mut *(mem1 as usize as *mut u64) };
        let val2: &mut u128 = unsafe { &mut *(mem2 as usize as *mut u128) };
        let val3: &mut u32 = unsafe { &mut *(mem3 as usize as *mut u32) };
        let val4: &mut AlignedStruct = unsafe { &mut *(mem4 as usize as *mut AlignedStruct) };
        *val1 = (1 << 62) - 1;
        *val2 = (1 << 126) - 1;
        *val3 = (1 << 30) -1;
        val4.0 = (1 << 30) - 2;

        allocator.dealloc(mem2, Layout::new::<u128>());
        let mem5 = allocator.alloc(Layout::new::<u32>());
        let val5: &mut u32 = unsafe { &mut *(mem5 as usize as *mut u32) };
        *val5 = 1;

        assert_eq!((1 << 62) - 1, *val1);
        assert_eq!((1 << 30) - 1, *val3);
        assert_eq!((1 << 30) - 2, val4.0);
        assert_eq!(1, *val5);
    }
    
    #[test]
    fn test_rand() {
        let seed: &[_] = &[1, 2, 3, 4];
        let mut rng: StdRng = SeedableRng::from_seed(seed);
        let mut items: [usize; 128] = array_init(|i| i);
        rng.shuffle(&mut items);

        let buffer = [0u8; 1031];
        let heap_start = &buffer[0] as *const u8 as usize;
        let heap_end = heap_start + 1031;
        let mut allocator = Allocator::new();

        allocator.add_area(heap_start, heap_end);
        let mut ptrs = vec![core::ptr::null_mut(); 128];
        for i in 0..128 {
            ptrs[i] = allocator.alloc(Layout::new::<i64>());
            unsafe {
                *(ptrs[i] as usize as *mut i64) = i as i64;
            }
        }
        for i in 0..64 {
            let tar = items[i];
            allocator.dealloc(ptrs[tar], Layout::new::<i64>());
        }
        for i in 64..128 {
            let tar = items[i];
            assert_eq!(tar as i64, unsafe { *(ptrs[tar] as usize as *mut i64) });
        }
        for i in 0..64 {
            let tar = items[i];
            ptrs[tar] = allocator.alloc(Layout::new::<i64>());
            unsafe {
                *(ptrs[tar] as usize as *mut i64) = -(tar as i64);
            }
        }
        for i in 0..128 {
            let tar = items[i];
            if i < 64 {
                assert_eq!(-(tar as i64), unsafe { *(ptrs[tar] as usize as *mut i64) });
            } else {
                assert_eq!(tar as i64, unsafe { *(ptrs[tar] as usize as *mut i64) });
            }
        }
    }

    #[test]
    fn test_rand_aligned() {
        let seed: &[_] = &[1, 2, 3, 5];
        let mut rng: StdRng = SeedableRng::from_seed(seed);
        let mut items: [usize; 128] = array_init(|i| i);
        rng.shuffle(&mut items);

        let buffer = [0u8; 2055];
        let heap_start = &buffer[0] as *const u8 as usize;
        let heap_end = heap_start + 2055;
        let mut allocator = Allocator::new();

        allocator.add_area(heap_start, heap_end);
        let mut ptrs = vec![core::ptr::null_mut(); 128];
        for i in 0..128 {
            ptrs[i] = allocator.alloc(Layout::new::<AlignedStruct>());
            unsafe {
                (*(ptrs[i] as usize as *mut AlignedStruct)).0 = i as u32;
            }
            assert!(ptrs[i] as usize % 16 == 0);
        }
        for i in 0..64 {
            let tar = items[i];
            allocator.dealloc(ptrs[tar], Layout::new::<AlignedStruct>());
        }
        for i in 64..128 {
            let tar = items[i];
            assert_eq!(tar as u32, unsafe { (*(ptrs[tar] as usize as *mut AlignedStruct)).0 });
            assert!(ptrs[tar] as usize % 16 == 0);
        }
        for i in 0..64 {
            let tar = items[i];
            ptrs[tar] = allocator.alloc(Layout::new::<AlignedStruct>());
            unsafe {
                (*(ptrs[tar] as usize as *mut AlignedStruct)).0 = tar as u32 + 256;
            }
        }
        for i in 0..128 {
            let tar = items[i];
            if i < 64 {
                assert_eq!(tar as u32 + 256, unsafe { (*(ptrs[tar] as usize as *mut AlignedStruct)).0 });
            } else {
                assert_eq!(tar as u32, unsafe { (*(ptrs[tar] as usize as *mut AlignedStruct)).0 });
            }
        }
    }

}
