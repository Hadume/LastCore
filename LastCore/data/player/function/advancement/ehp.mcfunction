#> player:advancement/ehp
# Entityがプレイヤーを攻撃したら
# @within function player:tick

## 体力を減らす
	execute store result score #ATK Temp on attacker on vehicle run scoreboard players get @s ATK
	scoreboard players operation @s HP -= #ATK Temp

## 体力の表示を更新
	function #lib:status/hp/update

## 進捗を剥奪
	advancement revoke @s only player:ehp

## 一時使用ScoreHolderをリセット
	scoreboard players reset #ATK Temp
