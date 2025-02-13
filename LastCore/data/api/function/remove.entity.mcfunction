#> api:remove.entity
# Entityを消す
# @within tag/function api:remove.entity

## 乗っているEntityでも
	execute on passengers at @s run function #api:remove.entity

## 下ろす
	ride @s dismount

## デスポーンするように
	data modify entity @s PersistenceRequired set value 0b

## 消す
	tp @s ~ ~-3000 ~
	kill @s
