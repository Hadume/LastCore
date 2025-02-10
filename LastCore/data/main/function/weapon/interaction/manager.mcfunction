#> main:weapon/interaction/manager
#
# @within function main:weapon/

## Manage
	execute store result storage iw: Player.Strg int 1 run scoreboard players get @s IW.Player.Storage
	function main:weapon/interaction/pos with storage iw: Player

	#data remove entity @s attack
