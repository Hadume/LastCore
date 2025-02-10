#> main:tick/
# 常時実行
# @within tag/function tick

## プレイヤーで常時実行
	execute as @a at @s run function main:tick/player

## コアがダメージを受ける
	execute as @e[tag=Core,nbt={HurtTime:10s}] run function main:core/damage
