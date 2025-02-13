#> lib:status/hp/update/main
# 体力を更新？
# @within function lib:status/hp/update/

## 体力を持ってなかったら、体力を最大体力と同じにする
	execute unless score @s HP = @s HP run scoreboard players operation @s HP = @s HP.Max

## 体力をコピー
	scoreboard players operation #HP Temp = @s HP

## 体力が0以下だったら
	execute if score #HP Temp matches ..0 run function #lib:death

## 体力が1以上だったら
	execute if score #HP Temp matches 1.. run function lib:status/hp/update/main/

## 一時使用ScoreHolderをリセット
	scoreboard players reset #HP Temp
