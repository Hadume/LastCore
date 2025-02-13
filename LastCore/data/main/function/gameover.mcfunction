#> main:gameover
# ゲームオーバー
# @within function main:core/damage

## ゲームをリセットする
	function #main:reset

## タイトル表示
	title @a clear
	title @a times 2 58 20
	title @a title {"text": "ゲームオーバー","color": "red","bold": true}

## 音
	execute as @a at @s run playsound item.goat_horn.sound.5 master @s ~ ~ ~ 1.0 1 0.0
