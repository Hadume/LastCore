#> player:reset
# プレイヤーをリセット
# @within function main:reset/

## タイトルを消す
	title @s clear
	title @s actionbar ""

## 音を消す
	stopsound @s

## アイテムを消す
	clear @s

## ステータスをリセット
	scoreboard players reset @s HP

## 体力表示を更新
	function #lib:status/hp/update

## 各スコアをリセット
	scoreboard players reset @s RespawnTimer
