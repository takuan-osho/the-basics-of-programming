(* フィールドとして"名前", "値段", "買った場所", "日付" を持つレコード型 okozukai_t を宣言 *)
type date = {
  year : int;
  month : int;
  day : int;
}

type okozukai_t = {
  name : string;
  price : int;
  place : string;
  date : date;
}

let okozukai1 = {
  name = "iPhone6S"; price = 100000; place = "Shibuya";
  date = {year = 2016; month = 1; day = 16;}
}
let okozukai2 = {
  name = "『プログラミングの基礎』"; price = 2300; place = "Kawasaki";
  date = {year = 2015; month = 9; day = 20;}
}
let okozukai3 = {
  name = "『オイラーの贈物』"; price = 1500; place = "Kawasaki";
  date = {year = 2010; month = 5; day = 3;}
}
