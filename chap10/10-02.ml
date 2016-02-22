(* 目的: 受け取った昇順の整数リスト lst を受け取り、昇順となる位置に n を挿入する *)
(* insert int list -> int -> int list *)
let rec insert lst n = match lst with
| [] -> [n]
| first :: rest -> if first <= n then first :: (insert rest n)
                                 else n :: first :: rest

(* 目的: 整数のリストを受け取り、それを昇順にソートしたリストを返す *)
(* ins_sort : int list -> int list *)
let rec ins_sort lst = match lst with
| [] -> []
| first :: rest -> insert (ins_sort rest) first

(* テスト *)
let test1 = ins_sort [] = []
let test2 = ins_sort [1] = [1]
let test3 = ins_sort [2; 1] = [1; 2]
let test4 = ins_sort [2; 3; 1] = [1; 2; 3]
let test5 = ins_sort [4; 3; 2; 1] = [1; 2; 3; 4]
let test6 = ins_sort [3; 4; 1; 2] = [1; 2; 3; 4]
let test7 = ins_sort [3; 1; 4; 2] = [1; 2; 3; 4]
