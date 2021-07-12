
(* interface is different for labeled functions *)
val f : x:int -> y:int -> int 

(* Error!
 * val f : y:int -> x:int -> int *)

