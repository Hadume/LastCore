#> enemy:hurt/main
# 敵がダメージを食らう
# @within function enemy:hurt/

## 体力を減らす
	scoreboard players remove @s HP 1

## ターゲットをプレイヤーに向ける
	execute on passengers if entity @s[tag=Target] run data modify entity @s AngryAt set from entity @a[tag=This,limit=1] UUID

## 体力の更新
	function #lib:status/hp/update
