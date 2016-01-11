(* 目的: 名前と成績の組を受け取って決まった形式の文字列を返す *)
(* seiseki : string * int -> string *)
(* let seiseki (name, seiseki) = name ^ "さんの評価は" ^ string_of_int seiseki ^ "です" *)
let seiseki pair = match pair with
  (name, seiseki) -> name ^ "さんの評価は" ^ string_of_int seiseki ^ "です"

(* テスト *)
let test1 = seiseki ("山田", 75) = "山田さんの評価は75です"
let test2 = seiseki ("田中", 100) = "田中さんの評価は100です"
