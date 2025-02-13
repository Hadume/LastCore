#> main:start/3
# 3
# @within function main:start/

## タイトル表示
	title @a clear
	title @a times 0 60 0
	title @a title [{"text": ">>> ","color": "green"},{"text": "3","bold": true},{"text": " <<<"}]

## 音
	execute as @a at @s run playsound block.note_block.bit block @s ~ ~ ~ 1.0 1.0 0.0

## 次
	schedule function main:start/2 1s
