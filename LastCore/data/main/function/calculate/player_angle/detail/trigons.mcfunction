#> main:calculate/player_angle/detail/trigons
# X:dyRA Y:dxRA
# CosA = cos(dyRA) CosB = cos(dxRA)
# SinA = sin(dyRA) SinB = sin(dxRA)
# @within function main:weapon/

## Calc sin cos
	$execute store result storage iw: Player.CosA double 1 run data get storage trfc: cos[$(X)]
	$execute store result storage iw: Player.SinA double 1 run data get storage trfc: sin[$(X)]
	$execute store result storage iw: Player.CosB double 1 run data get storage trfc: cos[$(Y)]
	$execute store result storage iw: Player.SinB double 1 run data get storage trfc: sin[$(Y)]
