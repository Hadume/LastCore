#> asset.lib:map/spawn.enemy/main/loop
# フェーズごとに敵を召喚する
# @within function asset.lib:map/spawn.enemy/

## これ以上召喚しなかったら、終了
	execute if score #Phase Temp matches ..0 run return 1

## 乱数
	execute store result score #ListSize Temp if data storage asset:temp Enemies[]
	execute store result score #Rand Temp run random value 1..
	scoreboard players operation #Rand Temp %= #ListSize Temp
	execute store result storage asset:temp Num int 1 run scoreboard players get #Rand Temp

## 敵を召喚
	function asset.lib:map/spawn.enemy/main/spawn with storage asset:temp

## 召喚数を減らす
	scoreboard players remove #Phase Temp 1

## ループ
	function asset.lib:map/spawn.enemy/main/loop
