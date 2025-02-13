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
	scoreboard objectives add RespawnTimer dummy
	scoreboard objectives add IW.Enemy.Pos.X.0 dummy
	scoreboard objectives add IW.Enemy.Pos.Y.0 dummy
	scoreboard objectives add IW.Enemy.Pos.Z.0 dummy
	scoreboard objectives add IW.Shop.Money dummy

### Status
	scoreboard objectives add HP dummy
	scoreboard objectives add HP.Max dummy
	scoreboard objectives add ATK dummy

#> Constant
	scoreboard players set #4 Const 4
	scoreboard players set #20 Const 20
	scoreboard players set #1000 Const 1000
	scoreboard players set #2000 Const 2000
	### Gameplay
		scoreboard players set #Core Const 10


#> Bossbar
	bossbar add lc: ""
	bossbar set lc: style notched_10

## 位置関係
	### コア
		summon marker 8 0 8 {Tags:["Core"]}

	### Enemy
		summon marker -7 0 -7 {Tags:["Enemy"]}
		summon marker -7 0 23 {Tags:["Enemy"]}
		summon marker 23 0 -7 {Tags:["Enemy"]}
		summon marker 23 0 23 {Tags:["Enemy"]}

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

		## Shop
			scoreboard objectives add IW.Shop.Storage dummy

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

		## Shop List
			function main:init/shop_list
