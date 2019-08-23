use util::avl_tree::{AvlTree, Node};
use util::binary_tree::BinaryTree;

#[derive(PartialOrd, PartialEq, Eq, Ord, Clone)]
pub struct ProcessId(pub u32);

pub struct ProcessManager<'a, P> {
    map: AvlTree<'a, ProcessId, P>,
    count: u32,
}

impl<'a, P> ProcessManager<'a, P> {
    pub fn new() -> ProcessManager<'a, P> {
        ProcessManager {
            map: AvlTree::new(),
            count: 0,
        }
    }

    pub fn register(&mut self, node: &'a mut Node<'a, ProcessId, P>)-> ProcessId {
        let id = ProcessId(self.count);
        node.item.0 = id.clone();
        self.map.insert(node);
        self.count += 1;
        id
    }

    pub fn get(&self, id: &ProcessId) -> Option<&'a P> {
        self.map.borrow(id)
    }

    pub fn get_mut(&mut self, id: &ProcessId) -> Option<&'a mut P> {
        self.map.borrow_mut(id)
    }
}