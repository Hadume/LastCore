#> api:core.bar/red
#
# @within function api:core.bar/

## 更新しました
	data modify storage lc: Bar.Process append value "Red"

## バーの色を変える
	bossbar set lc: color red

## 文字の色を変える
	data modify storage lc: Bar.Color set value '{"text":"","color":"red"}'
