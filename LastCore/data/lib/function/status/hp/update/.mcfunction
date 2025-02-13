#> lib:status/hp/update/
#
# @input as entity
# @within tag/function lib:status/hp/update

## 引数の確認
	execute store success storage lc:tmp Error byte 1 unless entity @s run tellraw @a [{"storage":"lc:","nbt":"Tell.ArgumentError"},"Need Selector"]

##
	execute unless data storage lc:tmp Error run function lib:status/hp/update/main

## 一時使用Storageを削除
	execute if data storage lc:tmp Error run data remove storage lc:tmp Error
