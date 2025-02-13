#> main:reset
# ゲームリセット
# @within
#   function main:start
#   tag/function main:reset

## オブジェクトを消す
	execute as @e[tag=LC] at @s run function main:remove.entity

## フェーズリセット
	scoreboard players reset #Phase Global

## バー
	### 隠す
		bossbar set lc: players

	### 色をリセット
		data remove storage lc: Bar


## プレイヤーをリセット
	execute as @a run function player:reset
