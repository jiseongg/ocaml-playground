
open OrderedTypes

module type SET = 
  functor (Elt: ORDERED_TYPE) ->
    (sig
      type element
      type set
      val empty : set
      val add : element -> set -> set
      val member : element -> set -> bool
    end with type element = Elt.t)

module AbstractSet_L : SET
