#> enemy:hurt/main
# 敵がダメージを食らう
# @within function enemy:hurt/

## 体力を減らす
	scoreboard players remove @s HP 1

## ターゲットをプレイヤーに向ける
	execute on passengers if entity @s[tag=Target] run data modify entity @s AngryAt set from entity @a[tag=This,limit=1] UUID

## 死
	execute if entity @s[scores={HP=..0}] at @s run return run function enemy:dead

## 回復
	effect give @s instant_damage 1 127 true
