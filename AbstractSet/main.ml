
open OrderedTypes
open Set

module StringSet = AbstractSet_L(OrderedString);;

let string_set_ex = StringSet.add "hi" StringSet.empty
let _ = 
  Printf.printf "%B\n" (StringSet.member "hi" string_set_ex)
let _ = 
  Printf.printf "%B\n" (StringSet.member "hello" string_set_ex)

