#> player:update.health_display
# 体力表示を更新
# @within function player:reset

## 体力をコピー
	execute if score @s HP = @s HP run scoreboard players operation #HP Temp = @s HP
	execute unless score @s HP = @s HP run scoreboard players set #HP Temp 10

## 体力バーに反映
	scoreboard players operation #HP Temp *= #200 Const
	scoreboard players operation @s ScoreToHealth = #HP Temp

## 一時使用ScoreHolderをリセット
	scoreboard players reset #HP Temp
