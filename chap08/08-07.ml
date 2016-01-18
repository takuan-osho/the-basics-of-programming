(* 起点の駅名、終点の駅名、経由する路線名、その2駅間の距離をフィールドに持つレコード型 *)
type ekikan_t = {
  kiten : string;
  shuten : string;
  keiyu : string;
  kyori : int
}
