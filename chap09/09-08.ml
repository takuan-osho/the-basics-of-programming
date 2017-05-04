(* フィールドとして "名前", "身長", "体重", "誕生日", "血液型"を持つレコード型 person_t を宣言 *)
type birthday = {
  month : int;
  day : int;
}

type person_t = {
  name : string;
  height : float;
  weight : float;
  birthday : birthday;
  blood_type : string;
}

let person1 = {
  name = "山田太郎"; height = 1.73; weight = 66.0;
  birthday = {month = 8; day = 23};
  blood_type = "B"
}

let person2 = {
  name = "鈴木宗近"; height = 1.88; weight = 75.2;
  birthday = {month = 8; day = 24};
  blood_type = "A"
}

let person3 = {
  name = "田中春臣"; height = 1.66; weight = 67.0;
  birthday = {month = 9; day = 23};
  blood_type = "O"
}

let person4 = {
  name = "田中冬彦"; height = 1.66; weight = 67.0;
  birthday = {month = 9; day = 25};
  blood_type = "A"
}

let lst1 = []
let lst2 = [person1]
let lst3 = [person1; person2]
let lst4 = [person1; person2; person3]
let lst5 = [person1; person2; person3; person4]

(* person_t list は
  - []
  - first :: rest
   という形 *)

(* 目的: person_t型のリストを受け取り、乙女座の人の名前のリストを返す *)
(* otomeza : person_t list -> string list *)
let rec otomeza lst = match lst with
| [] -> []
| {name = n; height = h; weight = w; birthday = {month; day}; blood_type = b_t} :: rest
  -> if (month = 8 && day >= 24 && day <= 31) || (month = 9 && day >= 1 && day <= 23)
      then n :: otomeza rest
      else otomeza rest

(* テスト *)
let test1 = otomeza lst1 = []
let test2 = otomeza lst2 = []
let test3 = otomeza lst3 = ["鈴木宗近"]
let test4 = otomeza lst4 = ["鈴木宗近"; "田中春臣"]
let test5 = otomeza lst5 = ["鈴木宗近"; "田中春臣"]
