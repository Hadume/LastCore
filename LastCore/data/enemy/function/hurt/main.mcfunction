#> enemy:hurt/main
# 敵がダメージを食らう
# @within function enemy:hurt/

## 体力を減らす
	scoreboard players operation @s HP -= #ATK Temp

## ターゲットをプレイヤーに向ける
	execute on passengers if entity @s[tag=Target] run data modify entity @s AngryAt set from storage lc:tmp Target

## 体力の更新
	function #lib:status/hp/update
