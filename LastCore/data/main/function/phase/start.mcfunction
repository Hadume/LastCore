#> main:phase/start
# フェーズを開始する
# @within function main:start/next/main

## フェーズを進ませる
	scoreboard players add #Phase Global 1

## 敵を召喚
	function #asset:map/

## バーの表示を更新
	function #api:core.bar

## タイトル表示
	title @a clear
	title @a times 2 18 20
	title @a title [{"text": "第"},{"score": {"name": "#Phase","objective": "Global"}},{"text": "フェーズ"}]
	title @a subtitle {"text": "スタート","color": "yellow","bold": true,"italic": true}

## 音
	execute as @a at @s run playsound item.goat_horn.sound.1 master @s ~ ~ ~ 0.75 1.0 0.0
	execute as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~ 0.03125 2 0.0
