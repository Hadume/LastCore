#> main:phase/start
# フェーズを開始する
# @within function main:start/

## フェーズを進ませる
	scoreboard players add #Phase Global 1

## 敵を召喚
	function #asset:map/

## バーの表示を更新
	function #api:core.bar
