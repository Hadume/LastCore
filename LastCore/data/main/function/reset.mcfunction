#> main:reset
# ゲームリセット
# @within
#   function main:start
#   tag/function main:reset

## オブジェクトを消す
	execute as @e[tag=LC] at @s run function main:remove.entity

## フェーズリセット
	scoreboard players reset #Phase Global

## ボスバーを隠す
	bossbar set lc: players

## プレイヤーをリセット
	execute as @a run function player:reset
