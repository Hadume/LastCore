#> main:weapon/detail/my_storage
#
# @within function main:weapon/

## Get Pos
	$data modify storage iw: Player.List[$(Strg)].Pos.X set from entity @s Pos[0]
	$data modify storage iw: Player.List[$(Strg)].Pos.Y set from entity @s Pos[1]
	$data modify storage iw: Player.List[$(Strg)].Pos.Z set from entity @s Pos[2]

## Get FaceTo
	$data modify storage iw: Player.List[$(Strg)].FaceTo.X set from storage iw: Player.FaceTo.X
	$data modify storage iw: Player.List[$(Strg)].FaceTo.Y set from storage iw: Player.FaceTo.Y
	$data modify storage iw: Player.List[$(Strg)].FaceTo.Z set from storage iw: Player.FaceTo.Z

## Reach
	# Multiply by 10^3
		$execute store result storage iw: Player.List[$(Strg)].ScaledFaceTo.X double 1 run data get storage iw: Player.List[$(Strg)].FaceTo.X 1000
		$execute store result storage iw: Player.List[$(Strg)].ScaledFaceTo.Z double 1 run data get storage iw: Player.List[$(Strg)].FaceTo.Z 1000

	# Left
		function main:calculate/rotation/y-axis/ with storage iw: Player.Reach.Left
		# Rotate Left
			$function main:calculate/rotation/y-axis/detail/rotate with storage iw: Player.List[$(Strg)].ScaledFaceTo

		# Calc Left
			$execute store result storage iw: Player.List[$(Strg)].Reach.Left.X double 0.0000001 run scoreboard players get #IW.Calc.Rotate.Y.0 IW.Peremen
			$data modify storage iw: Player.List[$(Strg)].Reach.Left.Y set from storage iw: Player.List[$(Strg)].FaceTo.Y
			$execute store result storage iw: Player.List[$(Strg)].Reach.Left.Z double 0.0000001 run scoreboard players get #IW.Calc.Rotate.Y.1 IW.Peremen


	# Right
		function main:calculate/rotation/y-axis/ with storage iw: Player.Reach.Right
		# Rotate
			$function main:calculate/rotation/y-axis/detail/rotate with storage iw: Player.List[$(Strg)].ScaledFaceTo

		# Calc Right
			$execute store result storage iw: Player.List[$(Strg)].Reach.Right.X double 0.0000001 run scoreboard players get #IW.Calc.Rotate.Y.0 IW.Peremen
			$data modify storage iw: Player.List[$(Strg)].Reach.Right.Y set from storage iw: Player.List[$(Strg)].FaceTo.Y
			$execute store result storage iw: Player.List[$(Strg)].Reach.Right.Z double 0.0000001 run scoreboard players get #IW.Calc.Rotate.Y.1 IW.Peremen

		$execute store result storage iw: Player.List[$(Strg)].Reach.Left.X double $(Reach) run data get storage iw: Player.List[$(Strg)].Reach.Left.X 10000
		$execute store result storage iw: Player.List[$(Strg)].Reach.Left.Y double $(Reach) run data get storage iw: Player.List[$(Strg)].Reach.Left.Y 10000
		$execute store result storage iw: Player.List[$(Strg)].Reach.Left.Z double $(Reach) run data get storage iw: Player.List[$(Strg)].Reach.Left.Z 10000
		$execute store result storage iw: Player.List[$(Strg)].Reach.Right.X double $(Reach) run data get storage iw: Player.List[$(Strg)].Reach.Right.X 10000
		$execute store result storage iw: Player.List[$(Strg)].Reach.Right.Y double $(Reach) run data get storage iw: Player.List[$(Strg)].Reach.Right.Y 10000
		$execute store result storage iw: Player.List[$(Strg)].Reach.Right.Z double $(Reach) run data get storage iw: Player.List[$(Strg)].Reach.Right.Z 10000
		$execute store result storage iw: Player.List[$(Strg)].Reach.Left.X double 0.0001 run data get storage iw: Player.List[$(Strg)].Reach.Left.X 1
		$execute store result storage iw: Player.List[$(Strg)].Reach.Left.Y double 0.0001 run data get storage iw: Player.List[$(Strg)].Reach.Left.Y 1
		$execute store result storage iw: Player.List[$(Strg)].Reach.Left.Z double 0.0001 run data get storage iw: Player.List[$(Strg)].Reach.Left.Z 1
		$execute store result storage iw: Player.List[$(Strg)].Reach.Right.X double 0.0001 run data get storage iw: Player.List[$(Strg)].Reach.Right.X 1
		$execute store result storage iw: Player.List[$(Strg)].Reach.Right.Y double 0.0001 run data get storage iw: Player.List[$(Strg)].Reach.Right.Y 1
		$execute store result storage iw: Player.List[$(Strg)].Reach.Right.Z double 0.0001 run data get storage iw: Player.List[$(Strg)].Reach.Right.Z 1
