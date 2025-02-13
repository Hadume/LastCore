#> main:core/damage
# コアがダメージを受ける
# @within function main:tick

## コアの体力を減らす
	scoreboard players remove #Core Global 1

## ゲームを終了する
	execute if score #Core Global matches ..0 run return run function main:reset

## バーを更新
	function #api:core.bar
