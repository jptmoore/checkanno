let normalize (json: Yojson.Safe.t): Yojson.Safe.t = 
  let json_str = Yojson.Safe.to_string json in
  Printf.printf "normalising %s\n" json_str;
  match json with
  | `String s -> `List [`String "T1"; `String s]
  | `Assoc xs -> `List [`String "T2"; `Assoc xs]
  | _ -> failwith "Invalid JSON"

let restore (json: Yojson.Safe.t): Yojson.Safe.t = 
  let json_str = Yojson.Safe.to_string json in
  Printf.printf "restoring %s\n" json_str;
  match json with
  | `List [`String _; json'] -> json'
  | _ -> failwith "Invalid JSON"