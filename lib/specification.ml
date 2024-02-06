let create_specification data = Specification_j.specification_of_string data

let parse ~data =
  match create_specification data with
  | exception e -> Result.error (Printexc.to_string e)
  | config -> Result.ok config
