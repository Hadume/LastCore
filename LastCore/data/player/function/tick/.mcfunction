#> player:tick/
# プレイヤーで常時実行
# @within function main:tick

## 進捗
	execute if entity @s[advancements={player:phe=true}] run function player:advancement/phe
	execute if entity @s[advancements={player:ehp=true}] run function player:advancement/ehp

## アクションバーの表示
	### 復活まで
		execute if entity @s[scores={RespawnTimer=1..}] run function player:tick/respawn.timer

	### 次のフェーズまで
		execute if score #Phase.Next Global matches 1.. run data modify storage lc:tmp Actionbar.NextPhase set value '[{"text":"次のフェーズまで: "},{"score":{"name":"#Phase.Next","objective":"Global"},"bold": true},{"text":"秒"}]'

	title @s actionbar [{"storage": "lc:tmp","nbt": "Actionbar.NextPhase","interpret": true},"  ",{"storage": "lc:tmp","nbt": "Actionbar.RespawnTimer","interpret": true}]

## 一時使用ScoreHolderをリセット
	scoreboard players reset #RespawnTimer Temp

## 一時使用Storageを削除
	data remove storage lc:tmp Actionbar
