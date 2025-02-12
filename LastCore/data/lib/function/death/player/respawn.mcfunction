#> lib:death/player/respawn
# プレイヤーの復活
# @within function lib:death/player/respawn_timer/main

## リスポーン地点にテレポート
	execute positioned as @e[type=marker,tag=Core,limit=1] positioned over world_surface run tp @s ~ ~ ~

## スコアをリセット
	scoreboard players reset @s RespawnTimer

## ゲームモードを変更
	gamemode adventure @s

## 体力を設定
	scoreboard players operation @s HP = @s HP.Max
	function #lib:status/hp/update

## アクションバーを更新
	title @s actionbar ""
