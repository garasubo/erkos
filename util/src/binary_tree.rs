use core::mem;
use core::ops::{Deref, DerefMut};
use core::ptr::NonNull;

pub struct Node<'a, K, V> {
    pub item: (K, V),
    parent: Option<NonNull<Node<'a, K, V>>>,
    left: Option<&'a mut Node<'a, K, V>>,
    right: Option<&'a mut Node<'a, K, V>>,
}

impl<'a, K, V> Node<'a, K, V> {
    pub fn new(key: K, value: V) -> Node<'a, K, V> {
        Node {
            item: (key, value),
            parent: None,
            left: None,
            right: None,
        }
    }

    fn is_same(&self, node: &Node<'a, K, V>) -> bool {
        (self as *const Node<'a, K, V>) == (node as *const Node<'a, K, V>)
    }

    fn get_parent_ref(&self) -> Option<&Node<'a, K, V>> {
        self.parent.as_ref().map(|ptr| unsafe {  ptr.as_ref() })
    }

    fn get_parent_mut(&mut self) -> Option<&mut Node<'a, K, V>> {
        self.parent.as_mut().map(|ptr| unsafe {  ptr.as_mut() })
    }

    fn get_min_child(&self) -> &Node<'a, K, V> {
        let mut current = self;
        while current.left.is_some() {
            current = current.left.as_ref().unwrap();
        }
        current
    }

    fn get_min_child_mut(&mut self) -> &mut Node<'a, K, V> {
        let mut current = self;
        while current.left.is_some() {
            current = current.left.as_mut().unwrap();
        }
        current
    }
}

pub struct BinaryTree<'a, K, V> {
    head: Option<&'a mut Node<'a, K, V>>,
    size: usize,
}

pub struct Iter<'a, K, V> {
    current: Option<*const Node<'a, K, V>>,
    size: usize,
}

pub struct IterMut<'a, K, V> {
    current: Option<NonNull<Node<'a, K, V>>>,
    size: usize,
}

// TODO: implement rotate
impl<'a, K, V> BinaryTree<'a, K, V> where K: Ord {
    pub fn new() -> BinaryTree<'a, K, V> {
        BinaryTree {
            head: None,
            size: 0,
        }
    }

    pub fn get(&self, key: &K) ->  Option<&V> {
        if self.head.is_none() {
            None
        } else {
            let mut current = self.head.as_ref().unwrap();
            while current.item.0 != *key {
                if current.item.0 < *key {
                    if current.right.is_none() {
                        return None;
                    } else {
                        current = current.right.as_ref().unwrap();
                    }
                } else {
                    if current.left.is_none() {
                        return None;
                    } else {
                        current = current.left.as_ref().unwrap();
                    }
                }
            }
            Some(&(current.item.1))
        }
    }

    pub fn get_mut(&mut self, key: &K) ->  Option<&mut V> {
        if self.head.is_none() {
            None
        } else {
            let mut current = self.head.as_mut().unwrap();
            while current.item.0 != *key {
                if current.item.0 < *key {
                    if current.right.is_none() {
                        return None;
                    } else {
                        current = current.right.as_mut().unwrap();
                    }
                } else {
                    if current.left.is_none() {
                        return None;
                    } else {
                        current = current.left.as_mut().unwrap();
                    }
                }
            }
            Some(&mut (current.item.1))
        }
    }

    pub fn insert(&mut self, node: &'a mut Node<'a, K, V>) {
        if self.head.is_none() {
            self.head.replace(node);
        } else {
            let mut current = self.head.as_mut().unwrap();
            loop {
                if current.item.0 < node.item.0 {
                    if current.right.is_none() {
                        let np = unsafe {NonNull::new_unchecked(*current as *mut Node<'a, K, V>)};
                        node.parent.replace(np);
                        current.right.replace(node);
                        break;
                    } else {
                        current = current.right.as_mut().unwrap();
                    }
                } else {
                    if current.left.is_none() {
                        let np = unsafe {NonNull::new_unchecked(*current as *mut Node<'a, K, V>)};
                        node.parent.replace(np);
                        current.left.replace(node);
                        break;
                    } else {
                        current = current.left.as_mut().unwrap();
                    }
                }
            }
        }
        self.size += 1;
    }

    pub fn iter(&self) -> Iter<'a, K, V> {
        if self.head.is_none() {
            Iter {
                current: None,
                size: 0
            }
        } else {
            let min_child = self.head.as_ref().unwrap().get_min_child();
            Iter {
                current: Some(min_child),
                size: self.size,
            }
        }
    }

    pub fn iter_mut(&mut self) -> IterMut<'a, K, V> {
        if self.head.is_none() {
            IterMut {
                current: None,
                size: 0
            }
        } else {
            let min_child = self.head.as_mut().unwrap().get_min_child_mut();
            IterMut {
                current: Some(unsafe { NonNull::new_unchecked(min_child as *mut Node<K,V>) }),
                size: self.size,
            }
        }
    }
}

impl<'a, K, V> Deref for Node<'a, K, V> {
    type Target = (K, V);

    fn deref(&self) -> &Self::Target {
        &self.item
    }
}

impl<'a, K, V> DerefMut for Node<'a, K, V> {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.item
    }
}

impl<'a, K, V> Iterator for Iter<'a, K, V> {
    type Item = &'a (K, V);
     
    fn next(&mut self) -> Option<&'a (K, V)> {
        if self.size == 0 {
            None
        } else {
            let result = unsafe { &(*self.current.unwrap()).item };
            self.current = self.current.map(|item| unsafe {
                let node = &(*item);
                self.size -= 1;
                match &node.right {
                    None => {
                        let mut parent = node.get_parent_ref();
                        let mut child = node;
                        while parent.is_some() && parent.unwrap().right.is_some() && parent.unwrap().right.as_ref().unwrap().is_same(child) {
                            child = &(*parent.unwrap());
                            parent = parent.unwrap().get_parent_ref();
                        }
                        parent.map(|par| par as *const Node<K,V>)
                    },
                    Some(right) => {
                        Some(right.get_min_child() as *const Node<K,V>)
                    },
                }
            }).unwrap();
            Some(result)
        }
    }

    fn size_hint(&self) -> (usize, Option<usize>) {
        (self.size, Some(self.size))
    }
}

impl<'a, K, V> Iterator for IterMut<'a, K, V> {
    type Item = &'a mut (K, V);
     
    fn next(&mut self) -> Option<&'a mut (K, V)> {
        if self.size == 0 {
            None
        } else {
            let result = self.current.unwrap();
            self.current = self.current.map(|mut item| unsafe {
                let node = item.as_mut();
                self.size -= 1;
                match &mut node.right {
                    None => {
                        let mut parent = node.parent;
                        let mut child = NonNull::new_unchecked(node as *mut Node<K,V>);
                        while parent.is_some() && parent.unwrap().as_ref().right.is_some() && parent.unwrap().as_ref().right.as_ref().unwrap().is_same(child.as_ref()) {
                            child = parent.unwrap();
                            parent = parent.unwrap().as_ref().parent;
                        }
                        parent
                    },
                    Some(right) => {
                        Some(NonNull::new_unchecked(right.get_min_child_mut() as *mut Node<K,V>))
                    },
                }
            }).unwrap();
            Some(unsafe { &mut ((*result.as_ptr()).item) })
        }
    }

    fn size_hint(&self) -> (usize, Option<usize>) {
        (self.size, Some(self.size))
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use rand::{Rng, StdRng, SeedableRng};
    use array_init::array_init;

    #[test]
    fn test_simple() {
        let mut btree = BinaryTree::new();
        assert!(btree.get(&0).is_none());
        let mut node1 = Node::new(1, "hello");
        btree.insert(&mut node1);
        assert_eq!(btree.get(&1).unwrap(), &"hello");
        let mut node2 = Node::new(2, "world");
        btree.insert(&mut node2);
        assert_eq!(&"hello", btree.get(&1).unwrap());
        assert_eq!(&"world", btree.get(&2).unwrap());
    }

    #[test]
    fn test_iter() {
        let mut btree = BinaryTree::new();
        let mut node1 = Node::new(9, "third");
        let mut node2 = Node::new(1, "first");
        let mut node3 = Node::new(3, "second");
        btree.insert(&mut node1);
        btree.insert(&mut node2);
        btree.insert(&mut node3);
        let expected = [(1, "first"), (3, "second"), (9, "third")];
        for (i, (key, value)) in btree.iter().enumerate() {
            assert_eq!(&expected[i].0, key);
            assert_eq!(&expected[i].1, value);
        }
    }

    #[test]
    fn test_iter_mut() {
        let mut btree = BinaryTree::new();
        let mut node1 = Node::new(9, "third");
        let mut node2 = Node::new(1, "first");
        let mut node3 = Node::new(3, "second");
        btree.insert(&mut node1);
        btree.insert(&mut node2);
        btree.insert(&mut node3);
        let expected = [(1, "first"), (3, "second"), (9, "third")];
        let next = ["one", "two", "three"];
        for (i, (key, value)) in btree.iter_mut().enumerate() {
            assert_eq!(&expected[i].0, key);
            assert_eq!(&expected[i].1, value);
            *value = next[i];
        }
        for (i, (key, value)) in btree.iter().enumerate() {
            assert_eq!(&expected[i].0, key);
            assert_eq!(&next[i], value);
        }
    }

    #[test]
    fn test_random() {
        let seed: &[_] = &[1, 2, 3, 4];
        let mut rng: StdRng = SeedableRng::from_seed(seed);
        let mut nodes: [Node<usize, usize>; 100]  = array_init(|i| Node::new(i, i));
        rng.shuffle(&mut nodes);
        let mut btree = BinaryTree::new();
        
        for node in nodes.iter_mut() {
            btree.insert(node);
        }
        for i in 0..100 {
            assert_eq!(i, *(btree.get(&i).unwrap()));
        }
        for (i, (key, value)) in btree.iter().enumerate() {
            assert_eq!(&i, key);
            assert_eq!(&i, value);
        }
    }
}