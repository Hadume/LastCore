#> player:reset
# プレイヤーをリセット
# @within function main:reset/

## アイテムを消す
	clear @s

## ステータス
	scoreboard players reset @s HP

## 体力表示を更新
	function #lib:status/hp/update
