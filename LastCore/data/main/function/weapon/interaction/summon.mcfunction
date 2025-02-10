#> main:weapon/interaction/summon
#
# @within function main:weapon/

## Summon Interaction
	summon interaction ~ ~ ~ {Tags:["IW.Interaction"],height:2.5,width:3}
	execute store result score @e[type=interaction,distance=..1,sort=nearest,limit=1] IW.Player.Storage run scoreboard players get @s IW.Player.Storage
