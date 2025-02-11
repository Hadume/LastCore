#> main:phase/spawn.enemy/main
# 敵を召喚
# @within function main:phase/spawn.enemy/loop

## 属性
	attribute @s max_health base set 2048.0
	attribute @s attack_damage base set 0.01

## データを変更
	data merge entity @s {Health:2048.0f,PersistenceRequired:1b,HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}

## 移動 (OK)
	execute positioned over world_surface run tp @s ~ ~ ~

## 装備を与える
	item replace entity @s armor.head with stone_button

## ステータス
	scoreboard players set @s HP 2

## チーム
	team join Player @s

## タグを付与
	tag @s add Enemy
	tag @s add LC
