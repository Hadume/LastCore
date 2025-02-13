#> asset.lib:map/spawn.enemy/main/spawn
# 敵を召喚
# @within function asset.lib:map/spawn.enemy/main/

## 敵のID
	$data modify storage asset:enemy ID set from storage asset:tmp Enemies[$(Num)].ID

##
	execute positioned as @e[type=marker,tag=Enemy,limit=1,sort=random] positioned over world_surface run function #asset:enemy/
