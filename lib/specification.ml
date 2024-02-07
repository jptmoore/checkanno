
let validate ~data =
  let spec = Specification_j.specification_of_string data in
  Specification_v.validate_specification [] spec |> function
    | None -> true
    | _ -> false
