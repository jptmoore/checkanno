let normalize (json : Yojson.Safe.t) : Yojson.Safe.t = 
  let json_str = Yojson.Safe.to_string json in
  let () = Printf.printf "%s\n" json_str in
  json

let restore (json : Yojson.Safe.t) : Yojson.Safe.t = 
  let json_str = Yojson.Safe.to_string json in
  let () = Printf.printf "%s\n" json_str in
  json