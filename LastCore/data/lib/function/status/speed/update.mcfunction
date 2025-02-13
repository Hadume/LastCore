#> lib:status/speed/update
# スピードの更新
# @within tag/function lib:status/speed/update

## スピードをリセット
	attribute @s movement_speed base set 0
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-12288
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-08192
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-04096
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-03072
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-02048
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-01024
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-00768
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-00512
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-00256
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-00192
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-00128
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-00064
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-00048
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-00032
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-00016
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-00012
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-00008
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-00004
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-00003
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-00002
	attribute @s movement_speed modifier remove d73e9ff7-9063-4380-8736-00001

## スピードを更新
	### スピードを取得
		scoreboard players operation #Speed Temp = @s Speed

	### 4^6
		scoreboard players operation #Speed Temp *= #2^18 Const
		execute if score #Speed Temp matches -1073741824..-1 run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-12288 12.288 add_value
		execute if score #Speed Temp matches ..-1073741825 run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-08192 8.192 add_value
		execute if score #Speed Temp matches 1073741824.. run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-04096 4.096 add_value

	### 4^5
		scoreboard players operation #Speed Temp *= #2^2 Const
		execute if score #Speed Temp matches -1073741824..-1 run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-03072 3.072 add_value
		execute if score #Speed Temp matches ..-1073741825 run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-02048 2.048 add_value
		execute if score #Speed Temp matches 1073741824.. run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-01024 1.024 add_value

	### 4^4
		scoreboard players operation #Speed Temp *= #2^2 Const
		execute if score #Speed Temp matches -1073741824..-1 run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-00768 0.768 add_value
		execute if score #Speed Temp matches ..-1073741825 run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-00512 0.512 add_value
		execute if score #Speed Temp matches 1073741824.. run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-00256 0.256 add_value

	### 4^3
		scoreboard players operation #Speed Temp *= #2^2 Const
		execute if score #Speed Temp matches -1073741824..-1 run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-00192 0.192 add_value
		execute if score #Speed Temp matches ..-1073741825 run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-00128 0.128 add_value
		execute if score #Speed Temp matches 1073741824.. run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-00064 0.064 add_value

	### 4^2
		scoreboard players operation #Speed Temp *= #2^2 Const
		execute if score #Speed Temp matches -1073741824..-1 run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-00048 0.048 add_value
		execute if score #Speed Temp matches ..-1073741825 run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-00032 0.032 add_value
		execute if score #Speed Temp matches 1073741824.. run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-00016 0.016 add_value

	### 4^1
		scoreboard players operation #Speed Temp *= #2^2 Const
		execute if score #Speed Temp matches -1073741824..-1 run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-00012 0.012 add_value
		execute if score #Speed Temp matches ..-1073741825 run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-00008 0.008 add_value
		execute if score #Speed Temp matches 1073741824.. run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-00004 0.004 add_value

	### 4^0
		scoreboard players operation #Speed Temp *= #2^2 Const
		execute if score #Speed Temp matches -1073741824..-1 run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-00003 0.003 add_value
		execute if score #Speed Temp matches ..-1073741825 run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-00002 0.002 add_value
		execute if score #Speed Temp matches 1073741824.. run attribute @s movement_speed modifier add d73e9ff7-9063-4380-8736-00001 0.001 add_value


## 一時使用ScoreHolderをリセット
	scoreboard players reset #Speed Temp
