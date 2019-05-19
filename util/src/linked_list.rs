use core::ops::{Deref, DerefMut};

pub struct ListItem<'a, T> {
    item: T,
    next: Option<&'a mut ListItem<'a, T>>,
    prev: Option<*mut ListItem<'a, T>>,
}

pub struct LinkedList<'a, T> {
    head: Option<&'a mut ListItem<'a, T>>,
    last: Option<*mut ListItem<'a, T>>,
}

impl<'a, T> Deref for ListItem<'a, T> {
    type Target = T;

    fn deref(&self) -> &Self::Target {
        &self.item
    }
}

impl<'a, T> DerefMut for ListItem<'a, T> {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.item
    }
}

impl<'a, T> LinkedList<'a, T> {
    pub fn new() -> LinkedList<'a, T> {
        LinkedList {
            head: None,
            last: None,
        }
    }

    pub fn is_empty(&self) -> bool {
        self.head.is_none()
    }

    pub fn pop(&mut self) -> Option<&'a mut ListItem<'a, T>> {
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

    pub fn push(&mut self, item: &'a mut ListItem<'a, T>) {
        if self.last.is_none() {
            let item_ptr = item as *mut ListItem<T>;
            item.prev = None;
            item.next = None;
            self.last.replace(item_ptr);
            self.head.replace(item);
        } else {
            let last_ptr = self.last.unwrap();
            let item_ptr = item as *mut ListItem<T>;
            self.last.replace(item_ptr);
            item.prev.replace(last_ptr);
            unsafe { (*last_ptr).next.replace(item); }
        }
    }

    pub fn head_mut(&mut self) -> Option<&mut &'a mut ListItem<'a, T>> {
        self.head.as_mut()
    }

    pub fn join(&mut self, target: &mut LinkedList<'a, T>) {
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

impl<'a, T> ListItem<'a, T> {
    pub fn create(item: T) -> ListItem<'a, T> {
        ListItem {
            item,
            next: None,
            prev: None,
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_list() {
        let mut item = ListItem::create(1);
        assert_eq!(1, *item);
        let mut list = LinkedList::new();
        list.push(&mut item);
        let head: &u32 = list.head_mut().unwrap();
        assert_eq!(1, *head);
        let head: &u32 = list.pop().unwrap();
        assert_eq!(1, *head);
        assert!(list.is_empty());
    }
    
    #[test]
    fn test_join() {
        let mut list1 = LinkedList::new();
        let mut list2 = LinkedList::new();
        let mut item1 = ListItem::create(1);
        list1.push(&mut item1);
        let mut item2 = ListItem::create(3);
        list1.push(&mut item2);
        let mut item3 = ListItem::create(5);
        list1.push(&mut item3);
        let mut item4 = ListItem::create(2);
        list1.push(&mut item4);
        let mut item5 = ListItem::create(4);
        list1.push(&mut item5);
        list1.join(&mut list2);
        assert!(list2.is_empty());
        let item: &u32 = list1.pop().unwrap();
        assert_eq!(1, *(item));
        let item: &u32 = list1.pop().unwrap();
        assert_eq!(3, *(item));
        let item: &u32 = list1.pop().unwrap();
        assert_eq!(5, *(item));
        let item: &u32 = list1.pop().unwrap();
        assert_eq!(2, *(item));
        let item: &u32 = list1.pop().unwrap();
        assert_eq!(4, *(item));
        assert!(list1.is_empty());
    }
}