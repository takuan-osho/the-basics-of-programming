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

(* 学生ひとり分のデータ(名前、点数、成績)を表す型 *)
type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string;
}

(* gakusei_t list は
  - []            空リスト、あるいは
  - first :: rest 最初の要素が first で残りのリストが rest
                  (first は gakusei_t 型、
                   rest が自己参照のケース)
  という形 *)

(* gakusei_t list 型のデータの例 *)
let lst1 = []
let lst2 = [{namae = "asai"; tensuu = 70; seiseki = "B"}]
let lst3 = [{namae = "asai"; tensuu = 70; seiseki = "B"};
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}]
let lst4 = [{namae = "yosida"; tensuu = 80; seiseki = "A"};
            {namae = "asai"; tensuu = 70; seiseki = "B"};
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}]

(* 目的: 学生リスト lst のうち成績が A の人の数を返す *)
(* count_A : gakusei_t list -> int *)
let rec count_A lst = match lst with
| [] -> 0
| ({namae = n; tensuu = t; seiseki = s} as first) :: rest
    -> if s = "A" then 1 + count_A rest
                  else count_A rest

(* テスト *)
let test1 = count_A lst1 = 0
let test2 = count_A lst2 = 0
let test3 = count_A lst3 = 1
let test4 = count_A lst4 = 2
