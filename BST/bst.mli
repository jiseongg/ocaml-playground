
module BST : sig
  type key = int
  type 'a btree
  val empty : 'a btree
  val insert : 'a btree -> key -> 'a -> 'a btree
  exception Bst_is_empty
  exception Not_found
  val find : key -> 'a btree -> 'a
end

