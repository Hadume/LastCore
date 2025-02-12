#> main:start
# ゲームスタート
# @within tag/function main:start

## ゲームリセット
	function main:reset

## コアを設置
	execute positioned as @e[type=marker,tag=Core,limit=1] positioned over world_surface run summon armor_stand ~ ~ ~ {Rotation:[0.0f,0.0f],NoGravity:1b,Invulnerable:1b,Silent:1b,Invisible:1b,NoBasePlate:1b,Pose:{Head:[180f,0f,0f]},Small:1b,Marker:1b,Passengers:[{id:"pig",Health:2048.0f,Silent:1b,attributes:[{id:"max_health",base:2048.0d}],Tags:["Core","LC"]}],Tags:["LC"]}

## プレイヤーを初期化
	execute as @a at @s run function player:start

## コア
	### 体力を設定
		scoreboard players set #Core Global 10
		bossbar set lc: max 10


## フェーズ
	### 設定
		scoreboard players set #Phase Global 0

	### スタート
		function main:phase/start
