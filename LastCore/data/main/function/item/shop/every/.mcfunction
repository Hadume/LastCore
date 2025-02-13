#> main:item/shop/every/
#
# @within function main:item/

## Load pages in your ender chest
	# Home Page
		$execute if score #IW.Shop.Page.$(Strg) IW.Shop.Storage matches 0 run function main:item/shop/every/content/operation/home with storage iws:

	# Core
		$execute if score #IW.Shop.Page.$(Strg) IW.Shop.Storage matches 1 run function main:item/shop/every/content/operation/core with storage iws:

	# Forge
		$execute if score #IW.Shop.Page.$(Strg) IW.Shop.Storage matches 2 run function main:item/shop/every/content/operation/forge with storage iws:

	# Armor Shop
		$execute if score #IW.Shop.Page.$(Strg) IW.Shop.Storage matches 3 run function main:item/shop/every/content/operation/armor with storage iws:

	# Weapon Shop
		$execute if score #IW.Shop.Page.$(Strg) IW.Shop.Storage matches 4 run function main:item/shop/every/content/operation/weapon with storage iws:

	# Potion Shop
		$execute if score #IW.Shop.Page.$(Strg) IW.Shop.Storage matches 5 run function main:item/shop/every/content/operation/potion with storage iws:

	## Clear item
		clear @s black_stained_glass_pane[custom_data={IWS:{Clear:1b}}]
		clear @s glistering_melon_slice[custom_data={IWS:{Clear:1b}}]
		clear @s anvil[custom_data={IWS:{Clear:1b}}]
		clear @s iron_chestplate[custom_data={IWS:{Clear:1b}}]
		clear @s iron_sword[custom_data={IWS:{Clear:1b}}]
		clear @s potion[custom_data={IWS:{Clear:1b}}]
		clear @s anvil[custom_data={IWS:{Clear:1b}}]
