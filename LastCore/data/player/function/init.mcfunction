#> player:init
# プレイヤーを初期化
# @within advancement player:init

## ステータス
	scoreboard players set @s HP.Max 10
	scoreboard players set @s ATK 1
	scoreboard players set @s Speed 100
	### スピードを更新
		function lib:status/speed/update
