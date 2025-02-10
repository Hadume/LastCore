#> main:calculate/rotation/y-axis/detail/rotate
#
# @within function main:calculate/rotation/y-axis/

## X 10^7
	$execute store result score #IW.Calc.Rotate.Y.0 IW.Peremen run data get storage iw: Player.Cos $(X)
	$execute store result score #IW.Calc.Rotate.Y.1 IW.Peremen run data get storage iw: Player.Sin $(X)

## Y 10^3
#None

## Z 10^7
	$execute store result score #IW.Calc.Rotate.Y.2 IW.Peremen run data get storage iw: Player.Sin $(Z)
	$execute store result score #IW.Calc.Rotate.Y.3 IW.Peremen run data get storage iw: Player.Cos $(Z)

## Calc
	scoreboard players operation #IW.Calc.Rotate.Y.0 IW.Peremen -= #IW.Calc.Rotate.Y.2 IW.Peremen
	scoreboard players operation #IW.Calc.Rotate.Y.1 IW.Peremen += #IW.Calc.Rotate.Y.3 IW.Peremen
