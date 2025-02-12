#> enemy:tick
# 敵で常時実行
# @within function main:tick

## 奈落に落ちたら、死ぬ
	execute if entity @s[y=-10064,dy=10000] run function #lib:death
