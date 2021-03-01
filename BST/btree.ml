 
module type BTree = sig
  type key = int
  type 'a btree
  val empty : 'a btree
  val insert : 'a btree -> key -> 'a -> 'a btree
  val find : key -> 'a btree -> 'a
  exception Bst_is_empty
  exception Not_found
end

