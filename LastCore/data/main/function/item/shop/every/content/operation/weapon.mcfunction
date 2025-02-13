#> main:item/shop/every/content/operation/weapon
#
# @within function main:item/shop/every/

## Click
	$execute unless items entity @s enderchest.18 arrow[custom_data={IWS:{Clear:1b}}] run scoreboard players set #IW.Shop.Page.$(Strg) IW.Shop.Storage 0
	function main:item/shop/every/content/operation/weapon/click_at_9 with storage iwil: Item.Weapon[0].ItemData
	function main:item/shop/every/content/operation/weapon/click_at_10 with storage iwil: Item.Weapon[1].ItemData
	function main:item/shop/every/content/operation/weapon/click_at_11 with storage iwil: Item.Weapon[2].ItemData
	function main:item/shop/every/content/operation/weapon/click_at_12 with storage iwil: Item.Weapon[3].ItemData
	function main:item/shop/every/content/operation/weapon/click_at_13 with storage iwil: Item.Weapon[4].ItemData
	function main:item/shop/every/content/operation/weapon/click_at_14 with storage iwil: Item.Weapon[5].ItemData
	function main:item/shop/every/content/operation/weapon/click_at_15 with storage iwil: Item.Weapon[6].ItemData
	function main:item/shop/every/content/operation/weapon/click_at_16 with storage iwil: Item.Weapon[7].ItemData
	function main:item/shop/every/content/operation/weapon/click_at_17 with storage iwil: Item.Weapon[8].ItemData

## Load layout in your ender chest
	function main:item/shop/every/content/layout/weapon
	$execute if score #IW.Shop.Page.$(Strg) IW.Shop.Storage matches 0 run function main:item/shop/every/content/layout/home


## Clear Item
	clear @s black_stained_glass_pane[custom_data={IWS:{Clear:1b}}]
	clear @s arrow[custom_data={IWS:{Clear:1b}}]
