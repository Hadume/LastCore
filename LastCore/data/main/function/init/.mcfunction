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
	scoreboard objectives add IW.Player.Storage dummy

### Status
	scoreboard objectives add HP dummy
	scoreboard objectives add HP.Max dummy
	scoreboard objectives add ATK dummy

#> Constant
	scoreboard players set #4 Const 4
	scoreboard players set #2000 Const 2000

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


## Player Storage Num 初期化
	scoreboard players set #IW.Player.Storage.Num IW.Player.Storage -1

## Item List
	function main:init/item_list
