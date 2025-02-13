#> asset.lib:enemy/spawn/
# 敵を召喚
# @input as entity
# @within tag/function asset.lib:enemy/spawn

## 引数の確認
	execute store success storage lc:tmp Error byte 1 unless entity @s run tellraw @a [{"storage":"lc:","nbt":"Tell.ArgumentError"},"Need Selector"]
	execute store success storage temp: Error byte 1 unless data storage asset:enemy Status.HP run tellraw @a [{"storage":"lc:","nbt":"Tell.ArgumentError"},"asset:enemy Status.HP"]
	execute store success storage temp: Error byte 1 unless data storage asset:enemy Status.ATK run tellraw @a [{"storage":"lc:","nbt":"Tell.ArgumentError"},"asset:enemy Status.ATK"]
	execute store success storage temp: Error byte 1 unless data storage asset:enemy Status.Speed run tellraw @a [{"storage":"lc:","nbt":"Tell.ArgumentError"},"asset:enemy Status.Speed"]
	###
		execute if data storage temp: Error at @s run function #api:remove.entity


##
	execute unless data storage lc:tmp Error run function asset.lib:enemy/spawn/main

## 一時使用Storageを削除
	execute if data storage lc:tmp Error run data remove storage lc:tmp Error
	execute if data storage asset:enemy Name run data remove storage asset:enemy Name
	execute if data storage asset:enemy Type run data remove storage asset:enemy Type
	execute if data storage asset:enemy Status run data remove storage asset:enemy Status
	execute if data storage asset:enemy NBT run data remove storage asset:enemy NBT
