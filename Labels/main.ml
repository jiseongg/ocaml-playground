open Labeled_functions

let res1 = f ~x:2 ~y:3
let res2 = f ~y:2 ~x:3

let _ = Printf.printf "res1: %d\n" res1
let _ = Printf.printf "res2: %d\n" res2
