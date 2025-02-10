#> main:calculate/player_angle/detail/angle
#
# CosA = cos(dyRA) CosB = cos(dxRA)
# SinA = sin(dyRA) SinB = sin(dxRA)
#
# @within function main:calculate/player_angle/detail/trigons

## Calc
	$execute store result storage iw: Player.FaceTo.X double -0.00000001 run data get storage iw: Player.SinA $(CosB)
	execute store result storage iw: Player.FaceTo.Y double -0.0001 run data get storage iw: Player.SinB
	$execute store result storage iw: Player.FaceTo.Z double 0.00000001 run data get storage iw: Player.CosA $(CosB)
