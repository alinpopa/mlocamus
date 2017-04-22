module type Numeral = sig
  val as_int : int
  val as_string: string
end

type numeral =
  I | V | X | L | C | D | M

module I : Numeral = struct
  let as_int = 1
  let as_string = "I"
end

module V : Numeral = struct
  let as_int = 5
  let as_string = "V"
end

module X : Numeral = struct
  let as_int = 10
  let as_string = "X"
end

module L : Numeral = struct
  let as_int = 50
  let as_string = "L"
end

module C : Numeral = struct
  let as_int = 100
  let as_string = "C"
end

module D : Numeral = struct
  let as_int = 500
  let as_string = "D"
end

module M : Numeral = struct
  let as_int = 1000
  let as_string = "M"
end

let as_numeral numeral =
  match numeral with
  | I -> (module I : Numeral)
  | V -> (module V : Numeral)
  | X -> (module X : Numeral)
  | L -> (module L : Numeral)
  | C -> (module C : Numeral)
  | D -> (module D : Numeral)
  | M -> (module M : Numeral)

let numerals_matcher =
  let open Re in
    compile (Re_pcre.re "^M{0,3}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$")
