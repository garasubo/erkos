enum Color {
    RED,
    BLACK,
}

struct Node<'a, K, V> {
    key: K,
    value: V,
    parent: Option<*mut Node<'a, K, V>>,
    left: Option<&'a mut Node<'a, K, V>>,
    right: Option<&'a mut Node<'a, K, V>>,
    color: Color,
}

impl<'a, K, V> Node<'a, K, V> {
    pub fn new(key: K, value: V) -> Node<'a, K, V> {
        Node {
            key,
            value,
            parent: None,
            left: None,
            right: None,
            color: Color::RED,
        }
    }
}

struct RbTree<'a, K, V> {
    head: Option<&'a mut Node<'a, K, V>>,
}

// TODO: implement rotate
impl<'a, K, V> RbTree<'a, K, V> where K: Ord {
    pub fn new() -> RbTree<'a, K, V> {
        RbTree { head: None }
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
            node.color = Color::BLACK;
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

    #[test]
    fn test_simple() {
        let mut rbtree = RbTree::new();
        assert!(rbtree.get(0).is_none());
        let mut node1 = Node::new(1, "hello");
        rbtree.insert(&mut node1);
        assert_eq!(rbtree.get(1).unwrap(), &"hello");
        let mut node2 = Node::new(2, "world");
        rbtree.insert(&mut node2);
        assert_eq!(rbtree.get(1).unwrap(), &"hello");
        assert_eq!(rbtree.get(2).unwrap(), &"world");
    }

}