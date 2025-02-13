#> main:item/shop/once/
#
# @within function main:item/

## Own Storage
	execute store result score @s IW.Shop.Storage store result storage iws: Strg int 1 run scoreboard players add #IW.Shop.Storage.Num IW.Shop.Storage 1

## Set the first page of ender chest
	function main:item/shop/once/content/homepage with storage iws:
