(* string list は
  - []
  - first :: rest
   という形 *)

(* 目的: 文字列のリストを受け取り、その中の要素を前から順に全部くっつけた文字列を返す *)
(* concat : string list -> string *)
let rec concat lst = match lst with
| [] -> ""
| first :: rest -> first ^ concat rest

(* テスト *)
let test1 = concat [] = ""
let test2 = concat ["春"] = "春"
let test3 = concat ["春"; "夏"] = "春夏"
let test4 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"
