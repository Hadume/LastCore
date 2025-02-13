#> lib:death/player/
# プレイヤーの死亡時の処理
# @within function lib:death/

## ゲームモードを変更
	gamemode spectator @s

## リスポーン地点にテレポート
	execute positioned as @e[type=marker,tag=Core,limit=1] positioned over world_surface run tp @s ~ ~ ~

## 復活までのタイマーを設定
	scoreboard players set @s RespawnTimer 200

## 伝える
	tellraw @a [{"text": "\n","color": "red"},{"selector": "@s","bold": true}," が倒された！"]

## 音
	execute as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 1.0 1.0 0.0

## 復活までのタイマー
	function lib:death/player/respawn_timer/loop
