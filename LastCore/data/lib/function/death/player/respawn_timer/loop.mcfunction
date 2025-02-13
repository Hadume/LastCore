#> lib:death/player/respawn_timer/loop
# 復活までのタイマー
# @within function lib:death/player/

## プレイヤーで
	execute as @a[scores={RespawnTimer=1..}] run function lib:death/player/respawn_timer/main
