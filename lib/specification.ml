
let validate ~data =
  let spec = Specification_j.specification_of_string data in
  let is_valid = match Specification_v.validate_specification [] spec with
    | None -> true
    | _ -> false
  in
  Printf.printf "%s\n" (if is_valid then "VALID" else "INVALID")
