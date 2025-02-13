#> main:item/
#
# @within function main:tick/

## Once
	execute unless score @s IW.Shop.Storage matches -2147483648..2147483647 run function main:item/shop/once/

## Insert to Strg
	execute store result storage iws: Strg int 1 run scoreboard players get @s IW.Shop.Storage

## Run always
	function main:item/shop/every/ with storage iws:
