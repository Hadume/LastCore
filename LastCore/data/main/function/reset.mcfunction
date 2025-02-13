#> main:reset
# ゲームリセット
# @within tag/function main:reset

## オブジェクトを消す
	execute as @e[tag=LC] at @s run function #api:remove.entity

## 各スコアをリセット
	scoreboard players reset #Phase Global
	scoreboard players reset #Phase.Next Global

## バー
	### 隠す
		bossbar set lc: players

	### 色をリセット
		data remove storage lc: Bar


## プレイヤーをリセット
	execute as @a run function player:reset

## スケジュールを解消
	schedule clear main:start/3
	schedule clear main:start/2
	schedule clear main:start/1
	schedule clear main:start/main
	schedule clear main:phase/next/loop
	schedule clear lib:death/player/respawn_timer/loop
