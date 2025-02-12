#> player:start
# プレイヤーを初期化
# @within function main:start/

## 移動
#execute positioned 0 0 0 positioned over world_surface run tp @s ~ ~ ~ 0.0 0.0

## ステータス
	scoreboard players operation @s HP = @s HP.Max

## ボスバーを表示
	bossbar set lc: players @s

## Effect
	### すべて消す
		effect clear @s

	effect give @s night_vision infinite 0 true
	effect give @s saturation infinite 127 true

## 経験値を消す
	xp set @s 0 levels
	xp set @s 0 points

## アイテムを渡す
	loot give @s loot player:sword
