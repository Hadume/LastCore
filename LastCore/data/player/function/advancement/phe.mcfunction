#> player:advancement/phe
# プレイヤーがEntityを攻撃したら
# @within function player:tick

## 武器を持っていたら、敵にダメージを与える
	execute if items entity @s weapon.mainhand *[custom_data~{Sword:1b}] run function enemy:hurt/

## 進捗を剥奪
	advancement revoke @s only player:phe
