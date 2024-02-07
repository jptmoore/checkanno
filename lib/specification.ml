
let parse ~data =
  let is_valid = match Specification_v.validate_specification [] data with
    | None -> true
    | _ -> false
  in
  Printf.printf "%s:\n%s\n"
    (if is_valid then "VALID" else "INVALID")
    (Yojson.Safe.prettify (Specification_j.string_of_specification data))

