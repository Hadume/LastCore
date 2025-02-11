#> main:init/
# 初期化
# @within function main:load

## 初期化完了
	data modify storage lc: Init set value 1b

#> Scoreboard
	scoreboard objectives add Global dummy
	scoreboard objectives add Const dummy
	scoreboard objectives add Temp dummy
	scoreboard objectives add IW.Peremen dummy
	scoreboard objectives add IW.Postoy dummy
	scoreboard objectives add IW.Player.Storage dummy
	scoreboard objectives add IW.Enemy.Pos.X.0 dummy
	scoreboard objectives add IW.Enemy.Pos.Y.0 dummy
	scoreboard objectives add IW.Enemy.Pos.Z.0 dummy

### Status
	scoreboard objectives add HP dummy

#> Constant
	scoreboard players set #4 Const 4
	scoreboard players set #200 Const 200

#> Bossbar
	bossbar add lc: ""
	bossbar set lc: style notched_10

#> Team
	### Player
		team add Player

	### Core
		team add Core


## Gamerule
	function main:init/gamerule

## Storage
	# Player List
		function main:init/player_list

	# Trigons
		function main:init/trigonometric_func
		#Pi
		data modify storage trfc: pi set value 31415
		#初期化
		data modify storage iw: Player.Rotation.X set value 0d
		data modify storage iw: Player.Rotation.Y set value 0d
		data modify storage iw: Player.Cos set value 0d
		data modify storage iw: Player.Sin set value 0d
		data modify storage iw: Player.FaceTo.X set value 0d
		data modify storage iw: Player.FaceTo.Y set value 0d
		data modify storage iw: Player.FaceTo.Z set value 0d


## IW Score
	scoreboard players set #IW.Calc.Postoy.0 IW.Postoy 0
	scoreboard players set #IW.Calc.Postoy.200 IW.Postoy 200
	scoreboard players set #IW.Calc.Postoy.10^1 IW.Postoy 10
	scoreboard players set #IW.Calc.Postoy.10^2 IW.Postoy 100
	scoreboard players set #IW.Calc.Postoy.10^3 IW.Postoy 1000
	scoreboard players set #IW.Calc.Postoy.10^4 IW.Postoy 10000
	scoreboard players set #IW.Calc.Postoy.10^5 IW.Postoy 100000
	scoreboard players set #IW.Calc.Postoy.10^6 IW.Postoy 1000000

## Player Storage Num 初期化
	scoreboard players set #IW.Player.Storage.Num IW.Player.Storage -1

## Item List
	function main:init/item_list
