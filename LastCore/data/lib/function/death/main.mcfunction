#> lib:death/main
# 死亡処理
# @within function lib:death/

##
	execute if entity @s[type=player] run function lib:death/player/
	execute if entity @s[tag=Enemy] run function lib:death/enemy
