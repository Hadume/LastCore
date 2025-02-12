#> player:advancement/ehp
# Entityがプレイヤーを攻撃したら
# @within function player:tick

## 体力を減らす
	scoreboard players remove @s HP 1

## 体力の表示を更新
	function #lib:status/hp/update

## 進捗を剥奪
	advancement revoke @s only player:ehp
