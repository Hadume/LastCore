#> core:generate/mountain/detail/interpolate_z
#
#
#
# @within function core:generate/mountain/

scoreboard players operation #LDC.Gen.Mix.Z.2 LDC.Peremen *= #LDC.Gen.STGL.Z LDC.Peremen
scoreboard players operation #LDC.Gen.Size.List.SetBlock.Pos.Y.0 LDC.Peremen -= #LDC.Gen.Mix.Z.2 LDC.Peremen
execute store result storage landscape: InsertFromY int 1 run scoreboard players add #LDC.Gen.Size.List.SetBlock.Pos.Y.0 LDC.Peremen 1
function core:generate/mountain/detail/insert_from_y with storage landscape:
scoreboard players operation #LDC.Gen.Pos.Y LDC.Peremen += #LDC.Gen.Before.Pos.Y LDC.Peremen
