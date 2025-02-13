#> asset.lib:phase/spawn.enemy/
# フェーズごとに敵を召喚する
# @within tag/function asset.lib:map/spawn.enemy

## 何体召喚するか
	scoreboard players operation #Phase Temp = #Phase Global

## 倍率を計算
	scoreboard players operation #Multiple Temp = #Phase Global
	execute store result score #Players Temp if entity @a
	scoreboard players operation #Multiple Temp *= #Players Temp
	scoreboard players add #Multiple Temp 9

## どの敵を召喚するか
	function asset.lib:map/spawn.enemy/main/loop

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Phase Temp
	scoreboard players reset #Players Temp
	scoreboard players reset #Multiple Temp
	scoreboard players reset #ListSize Temp
	scoreboard players reset #Rand Temp
	scoreboard players reset #HP Temp
	scoreboard players reset #ATK Temp

## 一時使用Storageを削除
	execute if data storage asset:tmp Enemies run data remove storage asset:tmp Enemies
