#> lib:death/player/
# プレイヤーの死亡時の処理
# @within function lib:death/

## ゲームモードを変更
	gamemode spectator @s

## リスポーン地点にテレポート
	execute positioned as @e[type=marker,tag=Core,limit=1] positioned over world_surface run tp @s ~ ~ ~

## 復活までのタイマーを設定
	scoreboard players set @s RespawnTimer 200

## 復活までのタイマー
	schedule function lib:death/player/respawn_timer/loop 1t
