#> main:phase/start
# フェーズを開始する
# @within function main:start/

## フェーズを進ませる
	scoreboard players add #Phase Global 1

## スコアをコピー
	scoreboard players operation #Phase Temp = #Phase Global

## 敵を召喚する
	function main:phase/spawn.enemy/loop

## バーの表示を更新
	function #api:core.bar

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Phase Temp
