#> main:advancement/entity_hurt_player
# Entityがプレイヤーを攻撃したら
# @within function main:tick/player

## 体力を減らす
	scoreboard players remove @s HP 1

## 体力の表示を更新
	execute if entity @s[scores={HP=..0}] run kill @s
	execute if entity @s[scores={HP=..0}] run scoreboard players set @s HP 10

## 体力の表示を更新
	function player:update.health_display

## 進捗を剥奪
	advancement revoke @s only main:entity_hurt_player
