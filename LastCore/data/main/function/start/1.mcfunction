#> main:start/1
# 1
# @within function main:start/2

## タイトル表示
	title @a title [{"text": "> ","color": "red"},{"text": "1","bold": true},{"text": " <"}]

## 音
	execute as @a at @s run playsound block.note_block.bit block @s ~ ~ ~ 1.0 1.0 0.0

## 次
	schedule function main:start/main 1s
