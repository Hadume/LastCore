#> player:tick
# プレイヤーで常時実行
# @within function main:tick

## 進捗
	execute if entity @s[advancements={player:phe=true}] run function player:advancement/phe
	execute if entity @s[advancements={player:ehp=true}] run function player:advancement/ehp
