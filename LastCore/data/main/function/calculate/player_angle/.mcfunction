#> main:calculate/player_angle/
#
# CosA = cos(dyRA) CosB = cos(dxRA)
# SinA = sin(dyRA) SinB = sin(dxRA)
#
# @public

## Calc sin cos
	execute store result score #IW.Player.Rotation.X IW.Peremen run data get entity @s Rotation[0] 10
	execute store result score #IW.Player.Rotation.Y IW.Peremen run data get entity @s Rotation[1] 10
	execute store result storage iw: Player.Rotation.X int 1 run scoreboard players add #IW.Player.Rotation.X IW.Peremen 1800
	execute store result storage iw: Player.Rotation.Y int 1 run scoreboard players add #IW.Player.Rotation.Y IW.Peremen 1800
	function main:calculate/player_angle/detail/trigons with storage iw: Player.Rotation

## Calc Angle
	function main:calculate/player_angle/detail/angle with storage iw: Player
