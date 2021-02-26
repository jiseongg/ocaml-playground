
module BST =
  struct
    type key = int
    type 'a btree = Empty | Node of key * 'a * 'a btree * 'a btree
    let empty = Empty
    let rec insert btree key value =
      match btree with
        Empty -> Node(key, value, Empty, Empty)
      | Node(k, v, left, right) ->
          if key <= k
          then Node(k, v, insert left key value, right)
          else Node(k, v, left, insert right key value)
    exception Bst_is_empty
    exception Not_found
    let rec find key btree = 
      match btree with
        Empty -> raise Bst_is_empty
      | Node(k, v, Empty, Empty) ->
          if key = k 
          then v
          else raise Not_found
      | Node(k, v, left, right) -> 
          if key <= k
          then find key left
          else find key right
  end;;

let bst_ex = BST.insert BST.empty 1 "hello" in
print_endline (BST.find 1 bst_ex);
