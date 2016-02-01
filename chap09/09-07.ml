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
  name = "田中冬彦"; height = 1.66; weight = 67.0;
  birthday = {month = 1; day = 1};
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

(* 目的: person_t型のリストを受け取り、血液型がA型の人の数を返す *)
(* count_ketstueki_A : person_t list -> int *)
let rec count_ketstueki_A lst = match lst with
| [] -> 0
| {name = n; height = h; weight = w; birthday = b; blood_type = b_t} :: rest -> if b_t = "A" then 1 + count_ketstueki_A rest
                          else count_ketstueki_A rest

(* テスト *)
let test1 = count_ketstueki_A lst1 = 0
let test2 = count_ketstueki_A lst2 = 0
let test3 = count_ketstueki_A lst3 = 1
let test4 = count_ketstueki_A lst4 = 1
let test5 = count_ketstueki_A lst5 = 2
