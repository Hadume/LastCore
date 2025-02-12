#> lib:death/
# 死亡時の処理
# @input as entity
# @within tag/function lib:death

##
	execute if entity @s[type=player] run function lib:death/player/
	execute if entity @s[tag=Enemy] run function lib:death/enemy
