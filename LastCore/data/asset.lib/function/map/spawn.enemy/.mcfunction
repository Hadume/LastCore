#> asset.lib:phase/spawn.enemy/
# フェーズごとに敵を召喚する
# @within tag/function asset.lib:map/spawn.enemy

## 何体召喚するか
	scoreboard players operation #Phase Temp = #Phase Global

## どの敵を召喚するか
	function asset.lib:map/spawn.enemy/main/loop

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Phase Temp
	scoreboard players reset #ListSize Temp
	scoreboard players reset #Rand Temp

## 一時使用Storageを削除
	execute if data storage asset:tmp Enemies run data remove storage asset:tmp Enemies
