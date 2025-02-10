#> main:weapon/storage/distribute
#
# @within function main:tick

## Add Storage Num
	execute store result storage iw: Player.Strg int 1 store result score @s IW.Player.Storage run scoreboard players add #IW.Player.Storage.Num IW.Player.Storage 1
	function main:weapon/storage/listup with storage iw: Player
