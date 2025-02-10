#> main:remove.entity
# Entityを消す
# @within function main:reset/
# @private

## 乗っているEntityでも
	execute on passengers at @s run function main:remove.entity

## 下ろす
	ride @s dismount

## デスポーンするように
	data modify entity @s PersistenceRequired set value 0b

## 消す
	tp @s ~ ~-3000 ~
	kill @s
