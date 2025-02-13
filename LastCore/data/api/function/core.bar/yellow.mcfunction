#> api:core.bar/yellow
#
# @within function api:core.bar/

## 更新しました
	data modify storage lc: Bar.Process append value "Yellow"

## バーの色を変える
	bossbar set lc: color yellow

## 文字の色を変える
	data modify storage lc: Bar.Color set value '{"text":"","color":"yellow"}'
