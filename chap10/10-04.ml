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

(* person_t list 型のデータの例 *)
let lst1 = []
let lst2 = [person1; person2]
let lst3 = [person2; person1]
let lst4 = [person3; person1; person2]
let lst5 = [person2; person3; person1]
let lst6 = [person1; person2; person3]
let lst7 = [person2; person1; person3]
let lst8 = [person3; person2; person1]

(* 目的: person_t 型のリストを受け取り、名前の順番にソートする *)
(* person_sort : person_t list -> person_t list *)
let person_sort lst = lst2

(* テスト *)
let test1 = person_sort lst1 = []
let test2 = person_sort lst2 = [person1; person2]
let test3 = person_sort lst3 = [person1; person2]
let test4 = person_sort lst4 = [person1; person2; person3]
let test6 = person_sort lst6 = [person1; person2; person3]
let test7 = person_sort lst7 = [person1; person2; person3]
let test8 = person_sort lst8 = [person1; person2; person3]
