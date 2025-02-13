#> api:core.bar/green
# コアのヘルスバーを緑に
# @within function api:core.bar/

## 更新しました
	data modify storage lc: Bar.Process append value "Green"

## バーの色を変える
	bossbar set lc: color green

## 文字の色を変える
	data modify storage lc: Bar.Color set value '{"text":"","color":"green"}'
