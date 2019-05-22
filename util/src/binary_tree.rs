use core::mem;

struct Node<'a, K, V> {
    key: K,
    value: V,
    parent: Option<*mut Node<'a, K, V>>,
    left: Option<&'a mut Node<'a, K, V>>,
    right: Option<&'a mut Node<'a, K, V>>,
}

impl<'a, K, V> Node<'a, K, V> {
    pub fn new(key: K, value: V) -> Node<'a, K, V> {
        Node {
            key,
            value,
            parent: None,
            left: None,
            right: None,
        }
    }

    fn rotate(&mut self) -> &mut Node<'a, K, V> {
        self
    }

    fn is_same(&self, node: &Node<'a, K, V>) -> bool {
        (self as *const Node<'a, K, V>) == (node as *const Node<'a, K, V>)
    }

    fn get_parent_mut(&self) -> Option<&'a mut Node<'a, K, V>> {
        self.parent.map(|ptr| unsafe { &mut (*ptr) })
    }
}

struct BinaryTree<'a, K, V> {
    head: Option<&'a mut Node<'a, K, V>>,
}

// TODO: implement rotate
impl<'a, K, V> BinaryTree<'a, K, V> where K: Ord {
    pub fn new() -> BinaryTree<'a, K, V> {
        BinaryTree { head: None }
    }

    pub fn get(&self, key: K) ->  Option<&V> {
        if self.head.is_none() {
            None
        } else {
            let mut current = self.head.as_ref().unwrap();
            while current.key != key {
                if current.key > key {
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
            Some(&(current.value))
        }
    }

    pub fn insert(&mut self, node: &'a mut Node<'a, K, V>) {
        if self.head.is_none() {
            self.head.replace(node);
        } else {
            let mut current = self.head.as_mut().unwrap();
            loop {
                if current.key > node.key {
                    if current.right.is_none() {
                        node.parent.replace(*current as *mut Node<'a, K, V>);
                        current.right.replace(node);
                        break;
                    } else {
                        current = current.right.as_mut().unwrap();
                    }
                } else {
                    if current.left.is_none() {
                        node.parent.replace(*current as *mut Node<'a, K, V>);
                        current.left.replace(node);
                        break;
                    } else {
                        current = current.left.as_mut().unwrap();
                    }
                }
            }
        }
    }

}

#[cfg(test)]
mod tests {
    use super::*;
    use core::cell::{RefMut, RefCell};
    use rand::{Rng, StdRng, SeedableRng};
    use array_init::array_init;

    #[test]
    fn test_simple() {
        let mut btree = BinaryTree::new();
        assert!(btree.get(0).is_none());
        let mut node1 = Node::new(1, "hello");
        btree.insert(&mut node1);
        assert_eq!(btree.get(1).unwrap(), &"hello");
        let mut node2 = Node::new(2, "world");
        btree.insert(&mut node2);
        assert_eq!(&"hello", btree.get(1).unwrap());
        assert_eq!(&"world", btree.get(2).unwrap());
    }

    #[test]
    fn test_random() {
        let seed: &[_] = &[1, 2, 3, 4];
        let mut rng: StdRng = SeedableRng::from_seed(seed);
        let mut nodes: [Node<usize, usize>; 100]  = array_init(|i| Node::new(i, i));
        rng.shuffle(&mut nodes);
        let mut btree = BinaryTree::new();
        for i in 0..100 {
            let node: *mut Node<usize,usize> = &mut nodes[i] as *mut Node<usize,usize>;
            unsafe { btree.insert(&mut (*node)) };
        }
        for i in 0..100 {
            assert_eq!(i, *(btree.get(i).unwrap()));
        }
    }
}