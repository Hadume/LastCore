#> main:phase/start
# フェーズを開始する
# @within function main:start/

## フェーズを進ませる
	scoreboard players add #Phase Global 1

## スコアをコピー
	scoreboard players operation #Phase Temp = #Phase Global

## 敵を召喚する
	execute if score #Phase Temp matches 1.. run function main:phase/spawn.enemy/loop

## バーの表示を更新
	function main:core/display
