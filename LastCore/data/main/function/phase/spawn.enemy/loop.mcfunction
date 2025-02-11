#> main:phase/spawn.enemy/loop
#
# @within function main:phase/start
# @private

## どこにスポーンするか
	execute store result score #Rand Temp run random value 1..2147483647
	scoreboard players operation #Rand Temp %= #4 Const

## スポーン
	execute if score #Rand Temp matches 0 positioned -7 -60 -7 summon zombie run function main:phase/spawn.enemy/main
	execute if score #Rand Temp matches 1 positioned -7 -60 23 summon zombie run function main:phase/spawn.enemy/main
	execute if score #Rand Temp matches 2 positioned 23 -60 -7 summon zombie run function main:phase/spawn.enemy/main
	execute if score #Rand Temp matches 3 positioned 23 -60 23 summon zombie run function main:phase/spawn.enemy/main


## スコアを減らす
	scoreboard players remove #Phase Temp 1

## ループ
	execute if score #Phase Temp matches 1.. run function main:phase/spawn.enemy/loop
