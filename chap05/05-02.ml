(* 目的: 受け取った時間に応じて午前か午後かを返す *)
(* jikan : int -> string *)
let jikan time =
    if time < 12 then "gozen"
                 else "gogo"

(* テスト *)
let test0 = jikan 0 = "gozen"
let test1 = jikan 11 = "gozen"
let test2 = jikan 12 = "gogo"
let test3 = jikan 23 = "gogo"
