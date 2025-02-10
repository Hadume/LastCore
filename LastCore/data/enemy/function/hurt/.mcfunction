#> enemy:hurt/
# 敵がダメージを食らうかも
# @within function main:advancement/player_hurt_entity

## 攻撃したEntityを特定
	tag @s add This
	execute as @e[tag=LC,nbt={HurtTime:10s}] store success score @s Temp on attacker if entity @s[tag=This]
	tag @s remove This

## 敵にダメージを与える
	execute as @e[tag=Enemy,scores={Temp=1}] run function enemy:hurt/main

## 一時使用Scoreをリセット
	scoreboard players reset @e Temp
