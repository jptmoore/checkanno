
let validate ~data =
  let spec = Specification_j.specification_of_string data in
  Specification_v.validate_specification [] spec |> function
    | None -> Result.ok "ok"
    | Some e -> Result.error (Printf.sprintf "%s"
    (Atdgen_runtime.Util.Validation.string_of_error e))
