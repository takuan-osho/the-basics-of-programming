(* 目的 : リストを2つ受け取り、それらの長さが同じか判定する *)
(* equal_length : 'a list -> 'a list -> bool *)
let rec equal_length lst1 lst2 = match (lst1, lst2) with
  | ([], []) -> true
  | ([], first2 :: rest2) -> false
  | (first1 :: rest1, []) -> false
  | (first1 :: rest1, first2 :: rest2) -> equal_length rest1 rest2

let test1 = equal_length [] [] = true
let test2 = equal_length [1] [] = false
let test3 = equal_length [] [1] = false
let test4 = equal_length [1] [2] = true
let test5 = equal_length [1; 2] [1; 5] = true
let test6 = equal_length ["first"] ["1st"] = true
let test7 = equal_length ["first"; "second"] ["1st"; "2nd"] = true
let test8 = equal_length ["first"] ["1st"; "2nd"] = false
let test9 = equal_length ["first"; "second"] ["1st"] = false
