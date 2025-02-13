#> main:item/shop/every/content/operation/core
#
# @within function main:item/shop/every/

## Click
	$execute unless items entity @s enderchest.18 arrow[custom_data={IWS:{Clear:1b}}] run scoreboard players set #IW.Shop.Page.$(Strg) IW.Shop.Storage 0

## Load layout in your ender chest
	function main:item/shop/every/content/layout/core
	$execute if score #IW.Shop.Page.$(Strg) IW.Shop.Storage matches 0 run function main:item/shop/every/content/layout/home

## Clear Item
	clear @s black_stained_glass_pane[custom_data={IWS:{Clear:1b}}]
	clear @s arrow[custom_data={IWS:{Clear:1b}}]
