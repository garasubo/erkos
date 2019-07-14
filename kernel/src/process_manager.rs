use util::binary_tree::{BinaryTree, Node};

#[derive(PartialOrd, PartialEq, Eq, Ord, Clone)]
pub struct ProcessId(pub u32);

pub struct ProcessManager<'a, P> {
    map: BinaryTree<'a, ProcessId, P>,
    count: u32,
}

impl<'a, P> ProcessManager<'a, P> {
    pub fn new() -> ProcessManager<'a, P> {
        ProcessManager {
            map: BinaryTree::new(),
            count: 0,
        }
    }

    pub fn register(&mut self, node: &'a mut Node<'a, ProcessId, P>)-> ProcessId {
        let id = ProcessId(self.count);
        node.item.0 = id.clone();
        self.map.insert(node);
        self.count += 0;
        id
    }

    pub fn get(&self, id: &ProcessId) -> Option<&P> {
        self.map.get(id)
    }

    pub fn get_mut(&mut self, id: &ProcessId) -> Option<&mut P> {
        self.map.get_mut(id)
    }
}