#> main:item/shop/every/content/operation/home
#
# @within function main:item/shop/every/


## Click
	$execute unless items entity @s enderchest.4 glistering_melon_slice[custom_data={IWS:{Clear:1b}}] run scoreboard players set #IW.Shop.Page.$(Strg) IW.Shop.Storage 1
	$execute unless items entity @s enderchest.12 anvil[custom_data={IWS:{Clear:1b}}] run scoreboard players set #IW.Shop.Page.$(Strg) IW.Shop.Storage 2
	$execute unless items entity @s enderchest.13 iron_chestplate[custom_data={IWS:{Clear:1b}}] run scoreboard players set #IW.Shop.Page.$(Strg) IW.Shop.Storage 3
	$execute unless items entity @s enderchest.14 iron_sword[custom_data={IWS:{Clear:1b}}] run scoreboard players set #IW.Shop.Page.$(Strg) IW.Shop.Storage 4
	$execute unless items entity @s enderchest.22 potion[custom_data={IWS:{Clear:1b}}] run scoreboard players set #IW.Shop.Page.$(Strg) IW.Shop.Storage 5

## Load layout in your ender chest
	function main:item/shop/every/content/layout/home
	$execute if score #IW.Shop.Page.$(Strg) IW.Shop.Storage matches 1 run function main:item/shop/every/content/layout/core
	$execute if score #IW.Shop.Page.$(Strg) IW.Shop.Storage matches 2 run function main:item/shop/every/content/layout/forge
	$execute if score #IW.Shop.Page.$(Strg) IW.Shop.Storage matches 3 run function main:item/shop/every/content/layout/armor
	$execute if score #IW.Shop.Page.$(Strg) IW.Shop.Storage matches 4 run function main:item/shop/every/content/layout/weapon
	$execute if score #IW.Shop.Page.$(Strg) IW.Shop.Storage matches 5 run function main:item/shop/every/content/layout/potion


## Clear Item
	clear @s black_stained_glass_pane[custom_data={IWS:{Clear:1b}}]
	clear @s glistering_melon_slice[custom_data={IWS:{Clear:1b}}]
	clear @s anvil[custom_data={IWS:{Clear:1b}}]
	clear @s iron_chestplate[custom_data={IWS:{Clear:1b}}]
	clear @s iron_sword[custom_data={IWS:{Clear:1b}}]
	clear @s potion[custom_data={IWS:{Clear:1b}}]
