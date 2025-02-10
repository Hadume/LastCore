#> main:advancement/player_hurt_entity
# プレイヤーがEntityにダメージを与えた
# @within function main:tick/player

## 武器を持っていたら、敵にダメージを与える
	execute if items entity @s weapon.mainhand *[custom_data~{Sword:1b}] run function enemy:hurt/

## 進捗剥奪
	advancement revoke @s only main:player_hurt_entity
