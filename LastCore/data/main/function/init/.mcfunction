#> main:init/
# 初期化
# @within function main:load

## 初期化完了
	data modify storage lc: Init set value 1b

#> Scoreboard
	scoreboard objectives add Global dummy
	scoreboard objectives add Const dummy
	scoreboard objectives add Temp dummy
	### Status
		scoreboard objectives add HP dummy

#> Constant
	scoreboard players set #200 Const 200

#> Bossbar
	bossbar add lc_main: ""
	bossbar set lc_main: style notched_10

## Gamerule
	function main:init/gamerule
