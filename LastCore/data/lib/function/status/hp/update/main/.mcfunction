#> lib:status/hp/update/main/
# 体力を更新
# @within function lib:status/hp/update/

## プレイヤーだったら
	execute if entity @s[type=player] run function lib:status/hp/update/main/player

## エンティティだったら

## 回復
	execute if entity @s[type=#main:undead] run effect give @s instant_damage 1 127 true
	execute if entity @s[type=!#main:undead] run effect give @s instant_health 1 127 true
