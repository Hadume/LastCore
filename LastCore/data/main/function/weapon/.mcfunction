#> main:weapon/
#
# @within function main:tick

## Reach Angle
	execute store result score #IW.Weapon.Reach.Angle.0 IW.Peremen run data get entity @s SelectedItem.components."minecraft:custom_data".IW.Angle -1
	execute store result score #IW.Weapon.Reach.Angle.1 IW.Peremen run data get entity @s SelectedItem.components."minecraft:custom_data".IW.Angle 1
	execute store result storage iw: Player.ReachAngle.Left.Angle int 1 run scoreboard players add #IW.Weapon.Reach.Angle.0 IW.Peremen 1800
	execute store result storage iw: Player.ReachAngle.Right.Angle int 1 run scoreboard players add #IW.Weapon.Reach.Angle.1 IW.Peremen 1800
	execute store result storage iw: Player.Reach double 1 run data get entity @s SelectedItem.components."minecraft:custom_data".IW.Reach

## Make player's vec3 storage
	execute unless score @s IW.Player.Storage matches -2147483648..2147483647 run function main:weapon/storage/distribute

## Calc Player Angle
	function main:calculate/player_angle/ with storage trfc:

## Interaction
	execute unless entity @e[type=interaction,tag=IW.Interaction,sort=nearest,distance=..1,limit=1] run function main:weapon/interaction/summon
	execute as @e[type=interaction,tag=IW.Interaction] at @s if entity @a[distance=..1] run function main:weapon/interaction/manager

## Ship Pos,FaceTo,Reach to MyStorage
	execute store result storage iw: Player.Strg int 1 run scoreboard players get @s IW.Player.Storage
	function main:weapon/detail/my_storage with storage iw: Player

## Normal Attack
	execute if data entity @e[type=interaction,tag=IW.Interaction,distance=..1,sort=nearest,limit=1] attack run function main:weapon/attack/normal/ with storage iw: Player

## Area
	function main:weapon/particle/area with storage iw: Player.List[1].Reach.Left
	function main:weapon/particle/area with storage iw: Player.List[1].Reach.Right

## Reset
	data modify storage iw: Player.Strg set value -1
