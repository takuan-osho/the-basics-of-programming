(* 目的: 受け取ったlstの要素それぞれの先頭にnをくっつける *)
(* add_to_each : int -> int list list -> int list list*)
let rec add_to_each n lst = match lst with
| [] -> []
| first :: rest -> (n :: first) :: add_to_each n rest

(* 目的: 受け取ったlstの接頭語のリストを求める *)
(* prefix : int list -> int list list *)
let rec prefix lst = match lst with
| [] -> []
| first :: rest -> [first] :: add_to_each first (prefix rest)

(* 目的: 受け取った昇順の整数リスト lst を受け取り、昇順となる位置に n を挿入する *)
(* insert int list -> int -> int list *)
let rec insert lst n = match lst with
| [] -> [n]
| first :: rest -> if first <= n then first :: (insert rest n)
                                 else n :: first :: rest

(* テスト *)
let test1 = add_to_each 1 [] = []
let test2 = add_to_each 1 [[2]] = [[1; 2]]
let test3 = add_to_each 1 [[2]; [2; 3]] = [[1; 2]; [1; 2; 3]]
let test4 = add_to_each 1 [[2]; [2; 3]; [2; 3; 4]] = [[1; 2;]; [1; 2; 3]; [1; 2; 3; 4]]

let test5 = prefix [] = []
let test6 = prefix [1] = [[1]]
let test7 = prefix [1; 2] = [[1]; [1; 2]]
let test8 = prefix [1; 2; 3; 4] = [[1]; [1; 2]; [1; 2; 3]; [1; 2; 3; 4]]

let test9 = insert [1; 3; 4] 2 = [1; 2; 3; 4]
let test10 = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8]
let test11 = insert [] 1 = [1]
let test12 = insert [1; 2] 3 = [1; 2; 3]
