#> lib:death/player/respawn_timer/main
# プレイヤーの復活までのタイマー
# @within function lib:death/player/respawn_timer/loop

## タイマーを減らす
	scoreboard players remove @s RespawnTimer 1

## タイマーが0になったら
	execute if score @s RespawnTimer matches ..0 run return run function lib:death/player/respawn

## 残り時間を表示
	### 秒を計算
		scoreboard players operation #RespawnTimer Temp = @s RespawnTimer
		scoreboard players operation #RespawnTimer Temp /= #20 Const
		scoreboard players add #RespawnTimer Temp 1

	title @s actionbar [{"text":"復活まで残り: "},{"score":{"name":"#RespawnTimer","objective":"Temp"},"bold": true},{"text":"秒"}]

## 復活してませんよ
	execute unless data storage lc:tmp {Timer:1b} run data modify storage lc:tmp Timer set value 1b
