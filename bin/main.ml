open Checkanno

let sample_file = ref "sample.json"

let read_file filename =
  let ch = open_in filename in
  let s = really_input_string ch (in_channel_length ch) in
  close_in ch;
  s

let parse_worker () =
  let usage = "usage: " ^ Sys.argv.(0) in
  let speclist =
    [
      ( "--json",
        Arg.Set_string sample_file,
        ": to specify the json file to use" );
    ]
  in
  Arg.parse speclist (fun x -> raise (Arg.Bad ("Bad argument : " ^ x))) usage

let parse () =
  let () = parse_worker () in
  let data = read_file !sample_file in
  let is_valid = Specification.validate ~data in
  Printf.printf "%s\n" (if is_valid then "VALID" else "INVALID")

let () = parse()

