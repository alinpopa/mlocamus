open Lwt
open Numerals
open Core.Std

let display_body body =
  let x = as_numeral I in
  let module X = (val x : Numeral) in
  printf "X: %s\n" (X.as_string);
  print_endline body
