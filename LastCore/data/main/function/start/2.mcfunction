#> main:start/2
# 2
# @within function main:start/3

## タイトル表示
	title @a title [{"text": ">> ","color": "yellow"},{"text": "2","bold": true},{"text": " <<"}]

## 音
	execute as @a at @s run playsound block.note_block.bit block @s ~ ~ ~ 1.0 1.0 0.0

## 次
	schedule function main:start/1 1s
