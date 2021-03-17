
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

module AbstractSet_L : SET =
  functor (Elt: ORDERED_TYPE) ->
    struct
      type element = Elt.t
      type set = element list
      let empty = []
      let rec add x s = 
        match s with
          [] -> [x]
        | hd::tl ->
            match Elt.compare x hd with
              Equal -> s
            | Less -> x :: s
            | Greater -> hd :: add x tl
      let rec member x s =
        match s with
          [] -> false
        | hd::tl ->
            match Elt.compare x hd with
              Equal -> true
            | Less -> false
            | Greater -> member x tl
    end;;
