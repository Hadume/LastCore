#> main:tick/player
# プレイヤーで常時実行
# @within function main:tick/

## 進捗
	execute if entity @s[advancements={main:player_hurt_entity=true}] run function main:advancement/player_hurt_entity
	execute if entity @s[advancements={main:entity_hurt_player=true}] run function main:advancement/entity_hurt_player
