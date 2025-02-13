#> main:weapon/attack/normal/detail/damage
#
# @within function main:weapon/detail/my_storage

## Deal Damage

# Get Damage
	$execute store result score #IW.Damage.Taken.Value IW.Peremen run data get storage iw: Player.List[$(Strg)].Damage.Value

# Remove Health
	scoreboard players operation @s HP -= #IW.Damage.Taken.Value IW.Peremen

# Display damage
	damage @s 0.0 arrow by @n[type=player]

# Hurt Func
	execute if entity @s[tag=Enemy] run function enemy:hurt/main

# Kill
#execute if score @s HP matches ..0 run kill @s

# Reset
	scoreboard players reset #IW.Damage.Taken.Value IW.Peremen
