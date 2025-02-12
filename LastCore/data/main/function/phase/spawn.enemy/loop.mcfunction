#> main:phase/spawn.enemy/loop
#
# @within function main:phase/start
# @private

## ループを停止
	execute if score #Phase Temp matches ..0 run return 1

## スポーン
	execute positioned as @e[type=marker,tag=Enemy,limit=1,sort=random] positioned over world_surface summon zombie run function main:phase/spawn.enemy/main

## スコアを減らす
	scoreboard players remove #Phase Temp 1

## ループ
	function main:phase/spawn.enemy/loop
