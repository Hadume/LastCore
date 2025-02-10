#> main:core/display
#
# @within function main:start/

## バーを更新
	execute store result bossbar lc: value run scoreboard players get #Core Global

## 敵の数を取得
	execute store result score #Enemy Temp if entity @e[tag=Enemy]

## 割合によって、色を変える
	execute if score #Core Global matches 6..10 run bossbar set lc: color green
	execute if score #Core Global matches 6..10 run data modify storage lc: BarColor set value '{"text":"","color":"green"}'
	execute if score #Core Global matches 3..5 run bossbar set lc: color yellow
	execute if score #Core Global matches 3..5 run data modify storage lc: BarColor set value '{"text":"","color":"yellow"}'
	execute if score #Core Global matches 1..2 run bossbar set lc: color red
	execute if score #Core Global matches 1..2 run data modify storage lc: BarColor set value '{"text":"","color":"red"}'

## 名前を更新
	bossbar set lc: name [{"storage": "lc:","nbt": "BarColor","interpret": true},{"text": "フェーズ: ","color": "white"}, {"score": {"name": "#Phase", "objective": "Global"},"color": "white","bold": true},"  ",{"text": "エネミー: ","color": "white"}, {"score": {"name": "#Enemy", "objective": "Temp"},"color": "white","bold": true},"  ",{"text": "コア: ","color": "white"}, {"score": {"name": "#Core", "objective": "Global"},"bold": true}]

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Enemy Temp
