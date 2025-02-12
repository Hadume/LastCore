#> lib:death/player/respawn_timer/loop
# 復活までのタイマー
# @within function lib:death/player/

## プレイヤーで
	execute as @a[scores={RespawnTimer=1..}] run function lib:death/player/respawn_timer/main

## 復活予定のプレイヤーがいたら、ループ
	execute if data storage lc:tmp {Timer:1b} run schedule function lib:death/player/respawn_timer/loop 1t

## 一時使用ScoreHolderをリセット
	scoreboard players reset #RespawnTimer Temp

## 一時使用Storageを削除
	execute if data storage lc:tmp {Timer:1b} run data remove storage lc:tmp Timer
