#> main:item/shop/every/content/operation/weapon/click_at_13
#
# @within function main:item/shop/every/content/operation/weapon

## Buy
	$execute unless items entity @s enderchest.13 $(Item)[custom_data={IW:$(IW),IWS:{Clear:1b}}] store result score #IW.Shop.Item.Cost IW.Peremen run data get storage iwil: Item.Weapon[4].ItemData.Cost
	$execute unless items entity @s enderchest.13 $(Item)[custom_data={IW:$(IW),IWS:{Clear:1b}}] if score @s IW.Shop.Money >= #IW.Shop.Item.Cost IW.Peremen run give @s $(Item)[custom_data={IW:$(IW)},custom_name="$(Name)",unbreakable={}]
	$execute unless items entity @s enderchest.13 $(Item)[custom_data={IW:$(IW),IWS:{Clear:1b}}] if score @s IW.Shop.Money >= #IW.Shop.Item.Cost IW.Peremen run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
	$execute unless items entity @s enderchest.13 $(Item)[custom_data={IW:$(IW),IWS:{Clear:1b}}] if score @s IW.Shop.Money >= #IW.Shop.Item.Cost IW.Peremen run scoreboard players operation @s IW.Shop.Money -= #IW.Shop.Item.Cost IW.Peremen
	$clear @s $(Item)[custom_data={IW:$(IW),IWS:{Clear:1b}}]
