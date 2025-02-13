#> player:respawn.timer
# 復活までのタイマー
# @within function player:tick

## 秒を計算
	scoreboard players operation #RespawnTimer Temp = @s RespawnTimer
	scoreboard players operation #RespawnTimer Temp /= #20 Const
	scoreboard players add #RespawnTimer Temp 1

## アクションバーの設定
	data modify storage lc:tmp Actionbar.RespawnTimer set value '[{"text":"復活まで: "},{"score":{"name":"#RespawnTimer","objective":"Temp"},"bold": true},{"text":"秒"}]'
