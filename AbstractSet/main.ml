
open OrderedTypes
open Set

module StringSet = AbstractSet_L(OrderedString);;

let string_set_ex = StringSet.empty in
let string_set_ex = StringSet.add "hi" string_set_ex in
Printf.printf "%B" StringSet.member "hi" string_set_ex;
