#> lib:death/enemy
# 敵の死亡時の処理
# @within function lib:death/main

## 消す
	function #api:remove.entity

## バーの表示を更新
	function #api:core.bar

## フェーズを進める
	execute unless entity @e[tag=Enemy,scores={HP=1..}] run function main:phase/clear
