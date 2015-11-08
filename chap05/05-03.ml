(* 目的: 月と日の数字を受け取って、牡羊座かどうか判定する *)
(* isOhitsuji : int -> int -> bool *)
let isOhitsuji month day =
  (month = 3 && day >= 21) || (month = 4 && day < 21)

(* テスト *)
let test1 = isOhitsuji 3 20 = false
let test2 = isOhitsuji 3 21 = true
let test3 = isOhitsuji 4 20 = true
let test4 = isOhitsuji 4 21 = false

(* 目的: 月と日の数字を受け取って、牡牛座かどうか判定する *)
(* isOushi : int -> int -> bool *)
let isOushi month day =
  (month = 4 && day >= 21) || (month = 5 && day < 22)

(* テスト *)
let test1 = isOushi 4 20 = false
let test2 = isOushi 4 21 = true
let test3 = isOushi 5 21 = true
let test4 = isOushi 5 22 = false

(* 目的: 月と日の数字を受け取って,双子座かどうか判定する *)
(* isHutago : int -> int -> bool *)
let isHutago month day =
  (month = 5 && day >= 22) || (month = 6 && day < 22)

(* テスト *)
let test1 = isHutago 5 21 = false
let test2 = isHutago 5 22 = true
let test3 = isHutago 6 21 = true
let test4 = isHutago 6 22 = false

(* 目的: 月と日の数字を受け取って,蟹座かどうか判定する *)
(* isHutago : int -> int -> bool *)
let isKani month day =
  (month = 6 && day >= 22) || (month = 7 && day < 24)

(* テスト *)
let test1 = isKani 6 21 = false
let test2 = isKani 6 22 = true
let test3 = isKani 7 23 = true
let test4 = isKani 7 24 = false

(* 目的: 月と日の数字を受け取って,獅子座かどうか判定する *)
(* isHutago : int -> int -> bool *)
let isShishi month day =
  (month = 7 && day >= 24) || (month = 8 && day < 24)

(* テスト *)
let test1 = isShishi 7 23 = false
let test2 = isShishi 7 24 = true
let test3 = isShishi 8 23 = true
let test4 = isShishi 8 24 = false

(* 目的: 月と日の数字を受け取って,乙女座かどうか判定する *)
(* isHutago : int -> int -> bool *)
let isOtome month day =
  (month = 8 && day >= 24) || (month = 9 && day < 24)

(* テスト *)
let test1 = isOtome 8 23 = false
let test2 = isOtome 8 24 = true
let test3 = isOtome 9 23 = true
let test4 = isOtome 9 24 = false

(* 目的: 月と日の数字を受け取って,天秤座かどうか判定する *)
(* isTembin : int -> int -> bool *)
let isTembin month day =
  (month = 9 && day >= 24) || (month = 10 && day < 24)

(* テスト *)
let test1 = isTembin 9 23 = false
let test2 = isTembin 9 24 = true
let test3 = isTembin 10 23 = true
let test4 = isTembin 10 24 = false

(* 目的: 月と日の数字を受け取って,天秤座かどうか判定する *)
(* isSasori : int -> int -> bool *)
let isSasori month day =
  (month = 10 && day >= 24) || (month = 11 && day < 23)

(* テスト *)
let test1 = isSasori 10 23 = false
let test2 = isSasori 10 24 = true
let test3 = isSasori 11 22 = true
let test4 = isSasori 11 23 = false

(* 目的: 月と日の数字を受け取って,天秤座かどうか判定する *)
(* isIte : int -> int -> bool *)
let isIte month day =
  (month = 11 && day >= 23) || (month = 12 && day < 23)

(* テスト *)
let test1 = isIte 11 22 = false
let test2 = isIte 11 23 = true
let test3 = isIte 12 22 = true
let test4 = isIte 12 23 = false

(* 目的: 月と日の数字を受け取って,天秤座かどうか判定する *)
(* isYagi : int -> int -> bool *)
let isYagi month day =
  (month = 12 && day >= 23) || (month = 1 && day < 21)

(* テスト *)
let test1 = isYagi 12 22 = false
let test2 = isYagi 12 23 = true
let test3 = isYagi 1 20 = true
let test4 = isYagi 1 21 = false

(* 目的: 月と日の数字を受け取って,水瓶座かどうか判定する *)
(* isMizugame : int -> int -> bool *)
let isMizugame month day =
  (month = 1 && day >= 21) || (month = 2 && day < 20)

(* テスト *)
let test1 = isMizugame 1 20 = false
let test2 = isMizugame 1 21 = true
let test3 = isMizugame 2 19 = true
let test4 = isMizugame 2 20 = false

(* 目的: 月と日の数字を受け取って,魚座かどうか判定する *)
(* isUo: int -> int -> bool *)
let isUo month day =
  (month = 2 && day >= 20) || (month = 3 && day < 21)

(* テスト *)
let test1 = isUo 2 19 = false
let test2 = isUo 2 20 = true
let test3 = isUo 3 20 = true
let test4 = isUo 3 21 = false

(* 目的: 月と日の数字を受け取って、該当する星座を返す *)
(* seiza : int -> int -> string *)
let seiza month day =
  if isOhitsuji month day then "牡羊座"
    else if isOushi month day then "牡牛座"
    else if isHutago month day then "双子座"
    else if isKani month day then "蟹座"
    else if isShishi month day then "獅子座"
    else if isOtome month day then "乙女座"
    else if isTembin month day then "天秤座"
    else if isSasori month day then "蠍座"
    else if isIte month day then "射手座"
    else if isYagi month day then "山羊座"
    else if isMizugame month day then "水瓶座"
    else if isUo month day then "魚座"
    else "はい"

(* テスト *)
let test1 = seiza 3 20 = "魚座"
let test2 = seiza 3 21 = "牡羊座"
let test3 = seiza 4 20 = "牡羊座"
let test4 = seiza 4 21 = "牡牛座"
let test5 = seiza 5 21 = "牡牛座"
let test6 = seiza 5 22 = "双子座"
let test7 = seiza 6 21 = "双子座"
let test8 = seiza 6 22 = "蟹座"
let test9 = seiza 7 23 = "蟹座"
let test10 = seiza 7 24 = "獅子座"
let test11 = seiza 8 23 = "獅子座"
let test12 = seiza 8 24 = "乙女座"
let test13 = seiza 9 23 = "乙女座"
let test14 = seiza 9 24 = "天秤座"
let test15 = seiza 10 23 = "天秤座"
let test16 = seiza 10 24 = "蠍座"
let test17 = seiza 11 22 = "蠍座"
let test18 = seiza 11 23 = "射手座"
let test19 = seiza 12 22 = "射手座"
let test20 = seiza 12 23 = "山羊座"
let test21 = seiza 1 20 = "山羊座"
let test22 = seiza 1 21 = "水瓶座"
let test23 = seiza 2 19 = "水瓶座"
let test24 = seiza 2 20 = "魚座"
