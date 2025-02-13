#> asset:map/1001/main
#
# @within function asset:map/1001/

## フェーズごとに
	execute if score #Phase Global matches 1.. run data modify storage asset:temp Enemies set value [{ID:2001001,weight:1.0f}]

## 敵を召喚する
	function #asset.lib:map/spawn.enemy
