#> main:tick
# 常時実行
# @within tag/function tick

## Weapon
	execute as @a unless score @s IW.Player.Storage matches -2147483648..2147483647 run function main:weapon/storage/distribute
	execute as @a at @s if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{IW:{Weapon:1b}}}}} run function main:weapon/
	execute as @e[type=interaction,tag=IW.Interaction] at @s unless entity @a[distance=..1] run kill @s
