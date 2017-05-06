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
  birthday = {month = 3; day = 20};
  blood_type = "B"
}

let person2 = {
  name = "鈴木宗近"; height = 1.88; weight = 75.2;
  birthday = {month = 6; day = 9};
  blood_type = "A"
}

let person3 = {
  name = "田中春臣"; height = 1.66; weight = 67.0;
  birthday = {month = 1; day = 1};
  blood_type = "O"
}

let person4 = {
  name = "真藤真"; height = 1.68; weight = 65.0;
  birthday = {month = 7; day = 1};
  blood_type = "AB"
}

(* 目的 : person_t型のデータのリスト lst を受け取り、各血液型の人の人数を組にして返す *)
(* 血液型の順序はA, B, O, ABとする *)
(* ketsueki_shukei : person_t list -> int * int * int * int *)
let rec ketsueki_shukei lst = match lst with
  | [] -> (0, 0, 0, 0)
  | {name = n; height = h; weight = w; birthday = b; blood_type = b_t } :: rest ->
    let (a, b, c, d) = ketsueki_shukei rest in
    if b_t = "A" then (a + 1, b, c, d)
    else if b_t = "B" then (a, b + 1, c, d)
    else if b_t = "O" then (a, b, c + 1, d)
    else (a, b, c, d + 1)

let test1 = ketsueki_shukei [] = (0, 0, 0, 0)
let test2 = ketsueki_shukei [person1] = (0, 1, 0, 0)
let test3 = ketsueki_shukei [person1; person2] = (1, 1, 0, 0)
let test4 = ketsueki_shukei [person1; person2; person3] = (1, 1, 1, 0)
let test5 = ketsueki_shukei [person1; person2; person3; person4] = (1, 1, 1, 1)
