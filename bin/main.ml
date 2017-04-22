open Lwt
open Core.Std
open Mlocamus

let r file =
  In_channel.read_lines file

let handle_line line =
  print_endline ("Your line: " ^ line)

let () =
  let lines = r "test1.txt" in
  List.iter ~f: handle_line lines
