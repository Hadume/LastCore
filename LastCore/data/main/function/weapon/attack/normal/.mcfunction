#> main:weapon/attack/normal/
#
# @within function main:weapon/

## Get enemies' pos
	execute as @e[type=!player,type=!armor_stand,type=!interaction,distance=..32] store result score @s IW.Enemy.Pos.X.0 run data get entity @s Pos[0] 100
	execute as @e[type=!player,type=!armor_stand,type=!interaction,distance=..32] store result score @s IW.Enemy.Pos.Y.0 run data get entity @s Pos[1] 100
	execute as @e[type=!player,type=!armor_stand,type=!interaction,distance=..32] store result score @s IW.Enemy.Pos.Z.0 run data get entity @s Pos[2] 100

## Get my pos
	$execute store result score #IW.Player.Pos.X.0 IW.Peremen run data get storage iw: Player.List[$(Strg)].Pos.X 100
	$execute store result score #IW.Player.Pos.Y.0 IW.Peremen run data get storage iw: Player.List[$(Strg)].Pos.Y 100
	$execute store result score #IW.Player.Pos.Z.0 IW.Peremen run data get storage iw: Player.List[$(Strg)].Pos.Z 100

## Calc Vector3 Me to Enemy
	scoreboard players operation @e[type=!player,type=!armor_stand,type=!interaction,distance=..32] IW.Enemy.Pos.X.0 -= #IW.Player.Pos.X.0 IW.Peremen
	scoreboard players operation @e[type=!player,type=!armor_stand,type=!interaction,distance=..32] IW.Enemy.Pos.Y.0 -= #IW.Player.Pos.Y.0 IW.Peremen
	scoreboard players operation @e[type=!player,type=!armor_stand,type=!interaction,distance=..32] IW.Enemy.Pos.Z.0 -= #IW.Player.Pos.Z.0 IW.Peremen

## Check the enemies' pos
	execute as @e[type=!player,type=!armor_stand,type=!interaction,distance=..32] run function main:calculate/inverse_matrix/ with storage iw: Player

## Deal damage to enemies in range
	execute as @e[type=!player,type=!armor_stand,type=!interaction,distance=..32] at @s if score @s IW.Enemy.Pos.X.0 matches -1..150 if score @s IW.Enemy.Pos.Y.0 matches -1..150 if score @s IW.Enemy.Pos.Z.0 matches -500..500 run function main:weapon/attack/normal/detail/damage with storage iw: Player

## Remove data from interaction
	data remove entity @e[type=interaction,tag=IW.Interaction,distance=..1,sort=nearest,limit=1] attack


tellraw @a "attacked"
