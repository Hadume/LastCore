#> asset.lib:enemy/spawn/
# 敵を召喚
# @within tag/function asset.lib:enemy/spawn

## tagを追加
	tag @s add Enemy
	tag @s add LC

## 属性
	attribute @s max_health base set 2048.0
	attribute @s attack_damage base set 0.01

## データを変更
	data merge entity @s {Health:2048.0f,PersistenceRequired:1b,HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}

## 燃えないように
	execute unless items entity @s armor.head * run item replace entity @s armor.head with stone_button

## 敵対状態の設定
	### わんこ
		summon wolf ~ ~ ~ {Invulnerable:1b,Silent:1b,Age:-2147483647,AngerTime:2147483647,attributes:[{id:"scale",base:0.0625d}],active_effects:[{id:"invisibility",amplifier:0b,duration:-1,show_particles:0b}],Tags:["Target","LC","Init"]}
		ride @e[type=wolf,tag=Init,limit=1] mount @s

	### 敵対状態に
		data modify entity @e[type=wolf,tag=Init,limit=1] AngryAt set from entity @e[type=pig,tag=Core,limit=1] UUID

	### 初期化完了
		tag @e[type=wolf,tag=Init,limit=1] remove Init


## ステータス
	execute store result score @s HP.Max store result score @s HP run data get storage asset:enemy Status.HP
