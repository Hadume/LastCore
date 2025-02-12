#> lib:death/enemy
# 敵の死亡時の処理
# @within function lib:death/

## 消す
	function main:remove.entity

## バーの表示を更新
	execute if entity @e[tag=Enemy,scores={HP=1..}] run return run function main:core/display

## フェーズを進めるか確認
	execute unless entity @e[tag=Enemy,scores={HP=1..}] run function main:phase/start
