#> lib:death/player/respawn_timer/main
# プレイヤーの復活までのタイマー
# @within function lib:death/player/respawn_timer/loop

## タイマーを減らす
	scoreboard players remove @s RespawnTimer 1

## タイマーが0になったら
	execute if score @s RespawnTimer matches ..0 run return run function lib:death/player/respawn

## 復活してませんよ
	schedule function lib:death/player/respawn_timer/loop 1t
