(* 誕生日を表す型 *)
type birthday = {
  month : int;
  day : int;
}
(* 身長・体重など各種データを持っている人間を表現する型 *)
type person_t = {
  name : string;
  height : float;
  weight : float;
  birthday : birthday;
  blood_type : string;
}

(* 目的: 人物のデータ person を受け取り、血液型を示す文字列を返す *)
(* ketsueki_hyoji : person_t -> string *)
let ketsueki_hyoji person = match person with
  {name = name; height = height; weight = weight;
  birthday = birthday; blood_type = blood_type} ->
    name ^ "さんの血液型は" ^ blood_type ^ "型です"

(* テスト *)
let test1 = ketsueki_hyoji {
  name = "asai"; height = 170.0; weight = 67.0;
  birthday = {month = 5; day = 4}; blood_type = "A"
} = "asaiさんの血液型はA型です"
let test2 = ketsueki_hyoji {
  name = "島津"; height = 160.0; weight = 57.0;
  birthday = {month = 12; day = 12}; blood_type = "B"
} = "島津さんの血液型はB型です"
let test3 = ketsueki_hyoji {
  name = "加賀山"; height = 155.7; weight = 52.5;
  birthday = {month = 1; day = 29}; blood_type = "O"
} = "加賀山さんの血液型はO型です"
let test4 = ketsueki_hyoji {
  name = "斎藤"; height = 175.7; weight = 68.5;
  birthday = {month = 1; day = 29}; blood_type = "AB"
} = "斎藤さんの血液型はAB型です"
