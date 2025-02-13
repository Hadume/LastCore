#> main:phase/clear
# フェーズクリア
# @within function enemy:hurt/main

## タイトル
	title @a clear
	title @a times 2 38 20
	title @a title [{"text": "第"},{"score": {"name": "#Phase","objective": "Global"}},{"text": "フェーズ"}]
	title @a subtitle {"text": "クリア","color": "yellow","bold": true,"italic": true}

## 音
	execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1.0 2.0 0.0

## 次のフェーズまでのタイマー
	scoreboard players set #Phase.Next Global 10
	function main:phase/next/loop
