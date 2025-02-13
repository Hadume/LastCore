#> enemy:hurt/
# 敵がダメージを食らうかも
# @within function main:advancement/player_hurt_entity

## 攻撃力
	scoreboard players operation #ATK Temp = @s ATK

## UUID
	data modify storage lc:tmp Target set from entity @s UUID

## 攻撃したEntityを特定
	tag @s add This
	execute as @e[tag=LC,nbt={HurtTime:10s}] store success score @s Temp on attacker if entity @s[tag=This]
	tag @s remove This

## ダメージを与える
	execute as @e[tag=Enemy,scores={Temp=1}] run function enemy:hurt/main

## 一時使用Scoreをリセット
	scoreboard players reset @e Temp
	scoreboard players reset #ATK Temp

## 一時使用Storageを削除
	data remove storage lc:tmp Target
