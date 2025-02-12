#> lib:status/hp/update/main/player
# プレイヤーだったら、体力バーに反映
# @within function lib:status/hp/update/main/

##
	scoreboard players operation #HP Temp *= #2000 Const
	scoreboard players operation #HP Temp /= @s HP.Max
	scoreboard players operation @s ScoreToHealth = #HP Temp
