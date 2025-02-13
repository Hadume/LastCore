#> asset:enemy/2001001/spawn/main
#
# @within function asset:enemy/2001001/spawn/

## 名前 : TextComponent
	data modify storage asset:enemy Name set value '{"text":"ゾンビ"}'

## タイプ : Type
	data modify storage asset:enemy Type set value "Enemy"

## ステータス : int
	data modify storage asset:enemy Status.HP set value 2
	data modify storage asset:enemy Status.ATK set value 1
	data modify storage asset:enemy Status.Speed set value 231

## NBT? : Compound
#data modify storage asset:enemy NBT set value {}

## MOBを召喚
	function #asset.lib:enemy/spawn
