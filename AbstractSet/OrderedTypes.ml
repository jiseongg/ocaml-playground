
type comparison = Less | Equal | Greater

module type ORDERED_TYPE = 
  sig
    type t
    val compare: t -> t -> comparison
  end

module OrderedString : ORDERED_TYPE =
  struct
    type t = string
    let compare x y = 
      if x = y then Equal
      else if x < y then Less
      else Greater
  end;;

