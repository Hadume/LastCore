#> main:weapon/storage/listup
#
# @within function main:weapon/storage/distribute

## List Up Players
	$data modify storage iw: Player.List[StrgNum:$(Strg)] set value {StrgNum:$(Strg)}
