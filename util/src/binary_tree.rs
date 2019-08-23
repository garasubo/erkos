pub trait BinaryTree<'a, K, V, N> where K: Ord {
    fn get(&self, key: &K) ->  Option<&V>;   
    fn borrow(&self, key: &K) ->  Option<&'a V>;
    fn get_mut(&mut self, key: &K) ->  Option<&mut V>;
    fn borrow_mut(&mut self, key: &K) ->  Option<&'a mut V>;
    fn insert(&mut self, node: &'a mut N);
}
