#> api:core.bar/
# コアのヘルスバーを更新します
# @within tag/function api:core.bar

## バーの数値を更新
	execute store result bossbar lc: value run scoreboard players get #Core Global

## 敵の数を取得
	execute store result score #Enemy Temp if entity @e[type=#main:living,tag=Enemy]

## 割合によって、色を変える
	### 割合を計算
		scoreboard players operation #Core Temp = #Core Global
		scoreboard players operation #Core Temp *= #1000 Const
		scoreboard players operation #Core Temp /= #Core Const

	execute if score #Core Temp matches 501..1000 unless data storage lc: {Bar:{Process:["Green"]}} run function api:core.bar/green
	execute if score #Core Temp matches 201..500 unless data storage lc: {Bar:{Process:["Yellow"]}} run function api:core.bar/yellow
	execute if score #Core Temp matches 0..200 unless data storage lc: {Bar:{Process:["Red"]}} run function api:core.bar/red

## 名前を更新
	bossbar set lc: name [{"storage": "lc:","nbt": "Bar.Color","interpret": true},{"text": "フェーズ: ","color": "white"}, {"score": {"name": "#Phase", "objective": "Global"},"color": "white","bold": true},"  ",{"text": "エネミー: ","color": "white"}, {"score": {"name": "#Enemy", "objective": "Temp"},"color": "white","bold": true},"  ",{"text": "コア: ","color": "white"}, {"score": {"name": "#Core", "objective": "Global"},"bold": true}]

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Enemy Temp
	scoreboard players reset #Core Temp
