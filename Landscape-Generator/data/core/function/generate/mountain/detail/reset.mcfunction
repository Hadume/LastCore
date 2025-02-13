#> core:generate/mountain/detail/reset
#
#
#
# @within function core:generate/mountain/

scoreboard players reset #LDC.Gen.Before.Pos.Y LDC.Peremen
scoreboard players reset #LDC.Gen.Count.Area LDC.Peremen
scoreboard players reset #LDC.Gen.Dist.R.0 LDC.Peremen
scoreboard players reset #LDC.Gen.Fill.Pos.Y.0 LDC.Peremen
scoreboard players reset #LDC.Gen.Fill.Pos.Y.1 LDC.Peremen
scoreboard players reset #LDC.Gen.GDR.0 LDC.Peremen
scoreboard players reset #LDC.Gen.GDR.1 LDC.Peremen
scoreboard players reset #LDC.Gen.GDR.2 LDC.Peremen
scoreboard players reset #LDC.Gen.GDR.3 LDC.Peremen
scoreboard players reset #LDC.Gen.Generate.Start.Point.X LDC.Peremen
scoreboard players reset #LDC.Gen.Generate.Start.Point.Z
scoreboard players reset #LDC.Gen.GSP.X LDC.Peremen
scoreboard players reset #LDC.Gen.GSP.Z LDC.Peremen
scoreboard players reset #LDC.Gen.Height LDC.Peremen
scoreboard players reset #LDC.Gen.Mix LDC.Peremen
scoreboard players reset #LDC.Gen.Mix.X.0 LDC.Peremen
scoreboard players reset #LDC.Gen.Mix.X.0.-1 LDC.Peremen
scoreboard players reset #LDC.Gen.Mix.X.1 LDC.Peremen
scoreboard players reset #LDC.Gen.Mix.X.2 LDC.Peremen
scoreboard players reset #LDC.Gen.Mix.Z.0 LDC.Peremen
scoreboard players reset #LDC.Gen.Mix.Z.1 LDC.Peremen
scoreboard players reset #LDC.Gen.Mix.Z.2 LDC.Peremen
scoreboard players reset #LDC.Gen.Move.Times.To.X LDC.Peremen
scoreboard players reset #LDC.Gen.Pos.Count.X.1 LDC.Peremen
scoreboard players reset #LDC.Gen.Pos.Count.Z.1 LDC.Peremen
scoreboard players reset #LDC.Gen.Pos.X LDC.Peremen
scoreboard players reset #LDC.Gen.Pos.Y LDC.Peremen
scoreboard players reset #LDC.Gen.Pos.Z LDC.Peremen
scoreboard players reset #LDC.Gen.Rand.Max LDC.Peremen
scoreboard players reset #LDC.Gen.Rand.Min LDC.Peremen
scoreboard players reset #LDC.Gen.Repeating.Times.X LDC.Peremen
scoreboard players reset #LDC.Gen.Repeating.Times.Z LDC.Peremen
scoreboard players reset #LDC.Gen.Run.Time LDC.Peremen
scoreboard players reset #LDC.Gen.Size.List.SetBlock.Pos.Y.0 LDC.Peremen
scoreboard players reset #LDC.Gen.Size.List.SetBlock.Pos.Y.1 LDC.Peremen
scoreboard players reset #LDC.Gen.Size.List.SetBlock.Pos.Y.2 LDC.Peremen
scoreboard players reset #LDC.Gen.STG.X LDC.Peremen
scoreboard players reset #LDC.Gen.STG.Z LDC.Peremen
scoreboard players reset #LDC.Gen.Subdivision.X LDC.Peremen
scoreboard players reset #LDC.Gen.Subdivision.Z LDC.Peremen
scoreboard players reset #LDC.Gen.Warp.Back.To.Z LDC.Peremen
scoreboard players reset #LDC.Gen.Pos.Y.Height.Multiplier LDC.Peremen
scoreboard players reset #LDC.Gen.Feature.Tree.Pos.Y.0 LDC.Peremen
scoreboard players reset #LDC.Gen.Size.Z LDC.Peremen
scoreboard players reset #LDC.Gen.Map.List.Size LDC.Peremen
scoreboard players reset #LDC.Gen.Map.Size LDC.Peremen


scoreboard players set #LDC.Gen.Pos.Count.X LDC.Peremen 0
scoreboard players set #LDC.Gen.Pos.Count.Z LDC.Peremen 0
scoreboard players set #LDC.Gen.STGL.X LDC.Peremen 0
scoreboard players set #LDC.Gen.STGL.Z LDC.Peremen 0
scoreboard players set #LDC.Gen.Pos.Count.X.0 LDC.Peremen 0
scoreboard players set #LDC.Gen.Pos.Count.Z.0 LDC.Peremen 0

data remove storage landscape: SetBlock.PosX
data remove storage landscape: SetBlock.PosY
data remove storage landscape: SetBlock.PosZ

kill @s
