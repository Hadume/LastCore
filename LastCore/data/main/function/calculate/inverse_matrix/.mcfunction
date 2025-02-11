#> main:calculate/inverse_matrix/
#
# @within function main:core/damage

## Get Vec Pos
	# X0 Y0 Z0
		$execute store result score #IW.Calc.Px0.28 IW.Peremen store result score #IW.Calc.Px0.46 IW.Peremen store result score #IW.Calc.Px0.57 IW.Peremen store result score #IW.Calc.Px0.111 IW.Peremen store result score #IW.Calc.Px0.140 IW.Peremen store result score #IW.Calc.Px0.230 IW.Peremen run data get storage iw: Player.List[$(Strg)].Reach.Left.X 100
		$execute store result score #IW.Calc.Py0.22 IW.Peremen store result score #IW.Calc.Py0.39 IW.Peremen store result score #IW.Calc.Py0.40 IW.Peremen store result score #IW.Calc.Py0.93 IW.Peremen store result score #IW.Calc.Py0.110 IW.Peremen store result score #IW.Calc.Py0.200 IW.Peremen run data get storage iw: Player.List[$(Strg)].Reach.Left.Y 100
		$execute store result score #IW.Calc.Pz0.4 IW.Peremen store result score #IW.Calc.Pz0.12 IW.Peremen store result score #IW.Calc.Pz0.13 IW.Peremen store result score #IW.Calc.Pz0.147 IW.Peremen store result score #IW.Calc.Pz0.20 IW.Peremen store result score #IW.Calc.Pz0.65 IW.Peremen run data get storage iw: Player.List[$(Strg)].Reach.Left.Z 100

	# X1 Y1 Z1
		$execute store result score #IW.Calc.Px1.10 IW.Peremen store result score #IW.Calc.Px1.37 IW.Peremen store result score #IW.Calc.Px1.50 IW.Peremen store result score #IW.Calc.Px1.56 IW.Peremen store result score #IW.Calc.Px1.92 IW.Peremen store result score #IW.Calc.Px1.185 IW.Peremen run data get storage iw: Player.List[$(Strg)].Reach.Right.X 100
		$execute store result score #IW.Calc.Py1.4 IW.Peremen store result score #IW.Calc.Py1.49 IW.Peremen store result score #IW.Calc.Py1.44 IW.Peremen store result score #IW.Calc.Py1.80 IW.Peremen store result score #IW.Calc.Py1.20 IW.Peremen store result score #IW.Calc.Py1.245 IW.Peremen run data get storage iw: Player.List[$(Strg)].Reach.Right.Y 100
		$execute store result score #IW.Calc.Pz1.22 IW.Peremen store result score #IW.Calc.Pz1.31 IW.Peremen store result score #IW.Calc.Pz1.8 IW.Peremen store result score #IW.Calc.Pz1.26 IW.Peremen store result score #IW.Calc.Pz1.110 IW.Peremen store result score #IW.Calc.Pz1.155 IW.Peremen run data get storage iw: Player.List[$(Strg)].Reach.Right.Z 100

	# X2 Y2 Z2
		execute store result score #IW.Calc.Px2.1 IW.Peremen store result score #IW.Calc.Px2.19 IW.Peremen store result score #IW.Calc.Px2.20 IW.Peremen store result score #IW.Calc.Px2.74 IW.Peremen store result score #IW.Calc.Px2.3 IW.Peremen store result score #IW.Calc.Px2.84 IW.Peremen run scoreboard players get #IW.Calc.Postoy.0 IW.Postoy
		execute store result score #IW.Calc.Py2.13 IW.Peremen store result score #IW.Calc.Py2.31 IW.Peremen store result score #IW.Calc.Py2.8 IW.Peremen store result score #IW.Calc.Py2.98 IW.Peremen store result score #IW.Calc.Py2.120 IW.Peremen store result score #IW.Calc.Py2.147 IW.Peremen run scoreboard players get #IW.Calc.Postoy.200 IW.Postoy
		execute store result score #IW.Calc.Pz2.40 IW.Peremen store result score #IW.Calc.Pz2.49 IW.Peremen store result score #IW.Calc.Pz2.44 IW.Peremen store result score #IW.Calc.Pz2.62 IW.Peremen store result score #IW.Calc.Pz2.39 IW.Peremen store result score #IW.Calc.Pz2.66 IW.Peremen run scoreboard players get #IW.Calc.Postoy.0 IW.Postoy

	# X3 Y3 Z3
		execute store result score #IW.Calc.Px3.2 IW.Peremen store result score #IW.Calc.Px3.5 IW.Peremen store result score #IW.Calc.Px3.30 IW.Peremen store result score #IW.Calc.Px3.38 IW.Peremen store result score #IW.Calc.Px3.95 IW.Peremen store result score #IW.Calc.Px3.138 IW.Peremen run scoreboard players get @s IW.Enemy.Pos.X.0
		execute store result score #IW.Calc.Py3.26 IW.Peremen store result score #IW.Calc.Py3.62 IW.Peremen store result score #IW.Calc.Py3.12 IW.Peremen store result score #IW.Calc.Py3.66 IW.Peremen store result score #IW.Calc.Py3.65 IW.Peremen store result score #IW.Calc.Py3.155 IW.Peremen run scoreboard players get @s IW.Enemy.Pos.Y.0
		execute store result score #IW.Calc.Pz3.80 IW.Peremen store result score #IW.Calc.Pz3.98 IW.Peremen store result score #IW.Calc.Pz3.93 IW.Peremen store result score #IW.Calc.Pz3.120 IW.Peremen store result score #IW.Calc.Pz3.200 IW.Peremen store result score #IW.Calc.Pz3.245 IW.Peremen run scoreboard players get @s IW.Enemy.Pos.Z.0




# DetM
	scoreboard players operation #IW.Calc.Px2.1 IW.Peremen *= #IW.Calc.Py1.4 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.1 IW.Peremen *= #IW.Calc.Pz0.4 IW.Peremen
	scoreboard players operation #IW.Calc.Px1.10 IW.Peremen *= #IW.Calc.Py2.13 IW.Peremen
	scoreboard players operation #IW.Calc.Px1.10 IW.Peremen *= #IW.Calc.Pz0.13 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.19 IW.Peremen *= #IW.Calc.Py0.22 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.19 IW.Peremen *= #IW.Calc.Pz1.22 IW.Peremen
	scoreboard players operation #IW.Calc.Px0.28 IW.Peremen *= #IW.Calc.Py2.31 IW.Peremen
	scoreboard players operation #IW.Calc.Px0.28 IW.Peremen *= #IW.Calc.Pz1.31 IW.Peremen
	scoreboard players operation #IW.Calc.Px1.37 IW.Peremen *= #IW.Calc.Py0.40 IW.Peremen
	scoreboard players operation #IW.Calc.Px1.37 IW.Peremen *= #IW.Calc.Pz2.40 IW.Peremen
	scoreboard players operation #IW.Calc.Px0.46 IW.Peremen *= #IW.Calc.Py1.49 IW.Peremen
	scoreboard players operation #IW.Calc.Px0.46 IW.Peremen *= #IW.Calc.Pz2.49 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.1 IW.Peremen -= #IW.Calc.Px1.10 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.1 IW.Peremen -= #IW.Calc.Px2.19 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.1 IW.Peremen += #IW.Calc.Px0.28 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.1 IW.Peremen += #IW.Calc.Px1.37 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.1 IW.Peremen -= #IW.Calc.Px0.46 IW.Peremen
	#tellraw @a {"score":{"name":"#IW.Calc.Px2.1","objective":"IW.Peremen"}}

# t
	scoreboard players operation #IW.Calc.Px3.2 IW.Peremen *= #IW.Calc.Py2.8 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.2 IW.Peremen *= #IW.Calc.Pz1.8 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.20 IW.Peremen *= #IW.Calc.Py3.26 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.20 IW.Peremen *= #IW.Calc.Pz1.26 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.38 IW.Peremen *= #IW.Calc.Py1.44 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.38 IW.Peremen *= #IW.Calc.Pz2.44 IW.Peremen
	scoreboard players operation #IW.Calc.Px1.56 IW.Peremen *= #IW.Calc.Py3.62 IW.Peremen
	scoreboard players operation #IW.Calc.Px1.56 IW.Peremen *= #IW.Calc.Pz2.62 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.74 IW.Peremen *= #IW.Calc.Py1.80 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.74 IW.Peremen *= #IW.Calc.Pz3.80 IW.Peremen
	scoreboard players operation #IW.Calc.Px1.92 IW.Peremen *= #IW.Calc.Py2.98 IW.Peremen
	scoreboard players operation #IW.Calc.Px1.92 IW.Peremen *= #IW.Calc.Pz3.98 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.2 IW.Peremen -= #IW.Calc.Px2.20 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.2 IW.Peremen -= #IW.Calc.Px3.38 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.2 IW.Peremen += #IW.Calc.Px1.56 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.2 IW.Peremen += #IW.Calc.Px2.74 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.2 IW.Peremen -= #IW.Calc.Px1.92 IW.Peremen

# u
	scoreboard players operation #IW.Calc.Px2.3 IW.Peremen *= #IW.Calc.Py3.12 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.3 IW.Peremen *= #IW.Calc.Pz0.12 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.30 IW.Peremen *= #IW.Calc.Py0.39 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.30 IW.Peremen *= #IW.Calc.Pz2.39 IW.Peremen
	scoreboard players operation #IW.Calc.Px0.57 IW.Peremen *= #IW.Calc.Py3.66 IW.Peremen
	scoreboard players operation #IW.Calc.Px0.57 IW.Peremen *= #IW.Calc.Pz2.66 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.84 IW.Peremen *= #IW.Calc.Py0.93 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.84 IW.Peremen *= #IW.Calc.Pz3.93 IW.Peremen
	scoreboard players operation #IW.Calc.Px0.111 IW.Peremen *= #IW.Calc.Py2.120 IW.Peremen
	scoreboard players operation #IW.Calc.Px0.111 IW.Peremen *= #IW.Calc.Pz3.120 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.138 IW.Peremen *= #IW.Calc.Py2.147 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.138 IW.Peremen *= #IW.Calc.Pz0.147 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.3 IW.Peremen += #IW.Calc.Px3.30 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.3 IW.Peremen -= #IW.Calc.Px0.57 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.3 IW.Peremen -= #IW.Calc.Px2.84 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.3 IW.Peremen += #IW.Calc.Px0.111 IW.Peremen
	scoreboard players operation #IW.Calc.Px2.3 IW.Peremen -= #IW.Calc.Px3.138 IW.Peremen

# v
	scoreboard players operation #IW.Calc.Px3.5 IW.Peremen *= #IW.Calc.Py1.20 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.5 IW.Peremen *= #IW.Calc.Pz0.20 IW.Peremen
	scoreboard players operation #IW.Calc.Px1.50 IW.Peremen *= #IW.Calc.Py3.65 IW.Peremen
	scoreboard players operation #IW.Calc.Px1.50 IW.Peremen *= #IW.Calc.Pz0.65 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.95 IW.Peremen *= #IW.Calc.Py0.110 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.95 IW.Peremen *= #IW.Calc.Pz1.110 IW.Peremen
	scoreboard players operation #IW.Calc.Px0.140 IW.Peremen *= #IW.Calc.Py3.155 IW.Peremen
	scoreboard players operation #IW.Calc.Px0.140 IW.Peremen *= #IW.Calc.Pz1.155 IW.Peremen
	scoreboard players operation #IW.Calc.Px1.185 IW.Peremen *= #IW.Calc.Py0.200 IW.Peremen
	scoreboard players operation #IW.Calc.Px1.185 IW.Peremen *= #IW.Calc.Pz3.200 IW.Peremen
	scoreboard players operation #IW.Calc.Px0.230 IW.Peremen *= #IW.Calc.Py1.245 IW.Peremen
	scoreboard players operation #IW.Calc.Px0.230 IW.Peremen *= #IW.Calc.Pz3.245 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.5 IW.Peremen -= #IW.Calc.Px1.50 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.5 IW.Peremen -= #IW.Calc.Px3.95 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.5 IW.Peremen += #IW.Calc.Px0.140 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.5 IW.Peremen += #IW.Calc.Px1.185 IW.Peremen
	scoreboard players operation #IW.Calc.Px3.5 IW.Peremen -= #IW.Calc.Px0.230 IW.Peremen

scoreboard players operation #IW.Calc.Px2.1 IW.Peremen /= #IW.Calc.Postoy.10^2 IW.Postoy
execute store result score @s IW.Enemy.Pos.X.0 run scoreboard players operation #IW.Calc.Px3.2 IW.Peremen /= #IW.Calc.Px2.1 IW.Peremen
execute store result score @s IW.Enemy.Pos.Y.0 run scoreboard players operation #IW.Calc.Px2.3 IW.Peremen /= #IW.Calc.Px2.1 IW.Peremen
execute store result score @s IW.Enemy.Pos.Z.0 run scoreboard players operation #IW.Calc.Px3.5 IW.Peremen /= #IW.Calc.Px2.1 IW.Peremen
tellraw @a {"score":{"name":"#IW.Calc.Px3.2","objective":"IW.Peremen"}}
tellraw @a {"score":{"name":"#IW.Calc.Px2.3","objective":"IW.Peremen"}}
tellraw @a {"score":{"name":"#IW.Calc.Px3.5","objective":"IW.Peremen"}}
