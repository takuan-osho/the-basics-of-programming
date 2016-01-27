(* int list は
  - []
  - first :: rest
   という形 *)

(* 目的: 受け取ったリスト lst の各要素の和を求める *)
(* sum : int list -> int *)
let rec sum lst = match lst with
| [] -> 0
| first :: rest -> first + sum rest

(* テスト *)
let test1 = sum [] = 0
let test2 = sum [2] = 2
let test3 = sum [1; 3] = 4
let test4 = sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = 55

(* 目的: 整数のリストを受け取り、偶数の要素のみを含むリストを返す *)
(* even : lst -> int list *)
let rec even lst = match lst with
| [] -> []
| first :: rest -> if first mod 2 = 0 then first :: even rest
                                      else even rest

(* テスト *)
let test1 = even [] = []
let test2 = even [1] = []
let test3 = even [2] = [2]
let test4 = even [1; 2] = [2]
let test5 = even [1; 2; 3] = [2]
let test6 = even [1; 2; 3; 4] = [2; 4]
