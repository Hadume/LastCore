#> main:phase/next/loop
# 次のフェーズまで
# @within function main:phase/clear
# @private

## スコアを減らす
	scoreboard players remove #Phase.Next Global 1

## フェーズを開始する
	execute if score #Phase.Next Global matches ..0 run return run function main:phase/next/main

## 音を鳴らす
	execute as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 0.25 1.0 0.0

## ループ
	schedule function main:phase/next/loop 1s
