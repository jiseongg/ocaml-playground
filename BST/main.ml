
open! Bst;;

let bst_ex = BST.insert BST.empty 1 "hello" in
print_endline (BST.find 1 bst_ex)
