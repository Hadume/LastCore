#> core:generate/mountain/
#
# CalcT = ceil(SubD[]*GenL)
# Sig{t4f0}
# GSP: Generalized Squared Pos
#
# Recommend resetting this holder #LDC.Gen.Count.Area
# @within function core:tick

#Run Tick
scoreboard players add #LDC.Gen.Run.Time LDC.Peremen 1
execute if score #LDC.Gen.Run.Time LDC.Peremen matches 1 run function core:generate/mountain/detail/calc_rand with storage landscape:

#Insert to score
execute store result score #LDC.Gen.Generate.Start.Point.X LDC.Peremen run data get storage landscape: GenerateStartPoint[0] 1000
execute store result score #LDC.Gen.Generate.Start.Point.Z LDC.Peremen run data get storage landscape: GenerateStartPoint[1] 1000
execute store result score #LDC.Gen.Subdivision.X LDC.Peremen run data get storage landscape: Subdivision[0]
execute store result score #LDC.Gen.Subdivision.Z LDC.Peremen run data get storage landscape: Subdivision[1]
execute store result score #LDC.Gen.Height LDC.Peremen run data get storage landscape: Height
execute store result score #LDC.Gen.Mix LDC.Peremen run data get storage landscape: Mix
execute store result score #LDC.Gen.Repeating.Times.X LDC.Peremen run data get storage landscape: RepeatingTimesX
execute store result score #LDC.Gen.Repeating.Times.Z LDC.Peremen run data get storage landscape: RepeatingTimesZ
execute store result score #LDC.Gen.Rand.Min LDC.Peremen run data get storage landscape: RandMin
execute store result score #LDC.Gen.Rand.Max LDC.Peremen run data get storage landscape: RandMax
execute store result score #LDC.Gen.Feature.Tree.Rate LDC.Peremen run data get storage landscape: Feature.TreeRate


#Calc Sub*Gen
$execute store result storage landscape: STG[0] double 1.0 run data get storage landscape: Subdivision[0] $(Generalization)
$execute store result storage landscape: STG[1] double 1.0 run data get storage landscape: Subdivision[1] $(Generalization)

#Calc Sub*GenL
$execute store result storage landscape: STGL[0] double 1.0 run data get storage landscape: Subdivision[0] $(GeneralizedLength)
$execute store result storage landscape: STGL[1] double 1.0 run data get storage landscape: Subdivision[1] $(GeneralizedLength)

#Insert to score
execute store result score #LDC.Gen.STG.X LDC.Peremen run data get storage landscape: STG[0] 0.001
execute store result score #LDC.Gen.STG.Z LDC.Peremen run data get storage landscape: STG[1] 0.001


#Count times to run
execute store result score #LDC.Gen.STGL.X LDC.Peremen run data get storage landscape: STGL[0] 0.001
execute store result score #LDC.Gen.Size.Z LDC.Peremen store result score #LDC.Gen.STGL.Z LDC.Peremen run data get storage landscape: STGL[1] 0.001


#Mix Area
#execute store result score #LDC.Gen.Mix.X.2 LDC.Peremen store result score #LDC.Gen.Mix.X.1 LDC.Peremen store result score #LDC.Gen.Mix.X.0 LDC.Peremen store result score #LDC.Gen.STGL.X LDC.Peremen run scoreboard players operation #LDC.Gen.STGL.X LDC.Peremen /= #LDC.Postoy.10^3 LDC.Postoy
#execute store result score #LDC.Gen.Mix.Z.1 LDC.Peremen store result score #LDC.Gen.Mix.Z.0 LDC.Peremen store result score #LDC.Gen.STGL.Z LDC.Peremen run scoreboard players operation #LDC.Gen.STGL.Z LDC.Peremen /= #LDC.Postoy.10^3 LDC.Postoy
execute store result score #LDC.Gen.Mix.X.0 LDC.Peremen run scoreboard players operation #LDC.Gen.STGL.X LDC.Peremen /= #LDC.Postoy.10^2 LDC.Postoy
execute store result score #LDC.Gen.Map.Size LDC.Peremen store result score #LDC.Gen.Mix.X.2 LDC.Peremen store result score #LDC.Gen.Mix.X.1 LDC.Peremen store result score #LDC.Gen.STGL.X LDC.Peremen run scoreboard players operation #LDC.Gen.STGL.X LDC.Peremen /= #LDC.Postoy.10^1 LDC.Postoy

execute store result score #LDC.Gen.Mix.Z.1 LDC.Peremen store result score #LDC.Gen.Mix.Z.0 LDC.Peremen store result score #LDC.Gen.STGL.Z LDC.Peremen run scoreboard players operation #LDC.Gen.STGL.Z LDC.Peremen /= #LDC.Postoy.10^2 LDC.Postoy
execute store result score #LDC.Gen.Mix.Z.1 LDC.Peremen store result score #LDC.Gen.STGL.Z LDC.Peremen run scoreboard players operation #LDC.Gen.STGL.Z LDC.Peremen /= #LDC.Postoy.10^1 LDC.Postoy

#Calculate a size of map
scoreboard players operation #LDC.Gen.Map.Size LDC.Peremen *= #LDC.Gen.STGL.Z LDC.Peremen
scoreboard players operation #LDC.Gen.Map.Size LDC.Peremen *= #LDC.Gen.Repeating.Times.X LDC.Peremen
scoreboard players operation #LDC.Gen.Map.Size LDC.Peremen *= #LDC.Gen.Repeating.Times.Z LDC.Peremen
scoreboard players operation #LDC.Gen.Map.Size LDC.Peremen /= #LDC.Postoy.10^2 LDC.Postoy
execute store result score #LDC.Gen.Map.List.Size LDC.Peremen run data get storage landscape: SetBlock.PosY
scoreboard players operation #LDC.Gen.Map.List.Size LDC.Peremen /= #LDC.Gen.Map.Size LDC.Peremen
title @a actionbar ["Loading: ",{"score":{"name":"#LDC.Gen.Map.List.Size","objective":"LDC.Peremen"}},"%"]

execute run scoreboard players operation #LDC.Gen.Mix.X.0 LDC.Peremen /= #LDC.Gen.Mix LDC.Peremen
execute store result score #LDC.Gen.Mix.Z.2 LDC.Peremen run scoreboard players operation #LDC.Gen.Mix.Z.0 LDC.Peremen /= #LDC.Gen.Mix LDC.Peremen
execute store result storage landscape: WarpBackTo.PosX int 1 run scoreboard players operation #LDC.Gen.Mix.X.1 LDC.Peremen -= #LDC.Gen.Mix.X.0 LDC.Peremen
execute store result storage landscape: WarpTo.PosZ int 1 store result score #LDC.Gen.Warp.Back.To.Z LDC.Peremen run scoreboard players operation #LDC.Gen.Mix.Z.1 LDC.Peremen -= #LDC.Gen.Mix.Z.0 LDC.Peremen
scoreboard players operation #LDC.Gen.Warp.Back.To.Z LDC.Peremen *= #LDC.Gen.Repeating.Times.Z LDC.Peremen
execute store result storage landscape: WarpBackTo.PosZ int 1 run scoreboard players operation #LDC.Gen.Warp.Back.To.Z LDC.Peremen -= #LDC.Gen.Mix.Z.1 LDC.Peremen

#Move on X-Axis by 1
execute store result score #LDC.Gen.Pos.Count.X.1 LDC.Peremen run scoreboard players add #LDC.Gen.Pos.Count.X.0 LDC.Peremen 1
execute store result score #LDC.Gen.Pos.X LDC.Peremen run scoreboard players operation #LDC.Gen.Pos.Count.X.1 LDC.Peremen *= #LDC.Postoy.10^3 LDC.Postoy

#Move on Z-Axis by 1
execute if score #LDC.Gen.Pos.Count.X.0 LDC.Peremen = #LDC.Gen.STGL.X LDC.Peremen store result score #LDC.Gen.Pos.Count.Z.1 LDC.Peremen run scoreboard players add #LDC.Gen.Pos.Count.Z.0 LDC.Peremen 1

#Always Running
execute store result score #LDC.Gen.Pos.Count.Z.1 LDC.Peremen run scoreboard players get #LDC.Gen.Pos.Count.Z.0 LDC.Peremen
execute store result score #LDC.Gen.Pos.Z LDC.Peremen run scoreboard players operation #LDC.Gen.Pos.Count.Z.1 LDC.Peremen *= #LDC.Postoy.10^3 LDC.Postoy
execute if score #LDC.Gen.Pos.Count.Z.0 LDC.Peremen = #LDC.Gen.STGL.Z LDC.Peremen store result score #LDC.Gen.Pos.Z LDC.Peremen store result score #LDC.Gen.Pos.Count.Z.1 LDC.Peremen run function core:generate/mountain/detail/warpto_z with storage landscape: WarpTo
execute if score #LDC.Gen.Pos.Count.Z.0 LDC.Peremen = #LDC.Gen.STGL.Z LDC.Peremen run scoreboard players add #LDC.Gen.Count.Area LDC.Peremen 1
execute if score #LDC.Gen.Count.Area LDC.Peremen = #LDC.Gen.Repeating.Times.Z LDC.Peremen run scoreboard players add #LDC.Gen.Move.Times.To.X LDC.Peremen 1
execute if score #LDC.Gen.Count.Area LDC.Peremen = #LDC.Gen.Repeating.Times.Z LDC.Peremen run function core:generate/mountain/detail/warpto_x with storage landscape: WarpBackTo
execute if score #LDC.Gen.Count.Area LDC.Peremen = #LDC.Gen.Repeating.Times.Z LDC.Peremen run scoreboard players reset #LDC.Gen.Count.Area LDC.Peremen

#End (Real)
execute if score #LDC.Gen.Move.Times.To.X LDC.Peremen = #LDC.Gen.Repeating.Times.Z LDC.Peremen run function core:generate/mountain/detail/reset


#Next SubD
#execute if score #LDC.Gen.Pos.Count.Z.0 LDC.Peremen = #LDC.Gen.STGL.Z LDC.Peremen run scoreboard players add #LDC.Gen.Count.Area LDC.Peremen 1


#Reset Count
execute if score #LDC.Gen.Pos.Count.X.0 LDC.Peremen = #LDC.Gen.STGL.X LDC.Peremen store result score #LDC.Gen.Pos.Count.X.1 LDC.Peremen store result score #LDC.Gen.Pos.Count.X.1 LDC.Peremen run scoreboard players set #LDC.Gen.Pos.Count.X.0 LDC.Peremen 0
execute if score #LDC.Gen.Pos.Count.Z.0 LDC.Peremen = #LDC.Gen.STGL.Z LDC.Peremen run function core:generate/mountain/detail/calc_rand with storage landscape:
execute if score #LDC.Gen.Pos.Count.Z.0 LDC.Peremen = #LDC.Gen.STGL.Z LDC.Peremen store result score #LDC.Gen.Pos.Z LDC.Peremen store result score #LDC.Gen.Pos.Count.Z.1 LDC.Peremen run scoreboard players set #LDC.Gen.Pos.Count.Z.0 LDC.Peremen 0


#Generalize
#10^3
scoreboard players operation #LDC.Gen.Pos.X LDC.Peremen += #LDC.Gen.Generate.Start.Point.X LDC.Peremen
scoreboard players operation #LDC.Gen.Pos.Z LDC.Peremen += #LDC.Gen.Generate.Start.Point.Z LDC.Peremen
#10^3
scoreboard players operation #LDC.Gen.Pos.X LDC.Peremen -= #LDC.Gen.STG.X LDC.Peremen
scoreboard players operation #LDC.Gen.Pos.Z LDC.Peremen -= #LDC.Gen.STG.Z LDC.Peremen
#10^6
scoreboard players operation #LDC.Gen.Pos.X LDC.Peremen *= #LDC.Postoy.10^3 LDC.Postoy
scoreboard players operation #LDC.Gen.Pos.Z LDC.Peremen *= #LDC.Postoy.10^3 LDC.Postoy
#10^3
scoreboard players operation #LDC.Gen.Pos.X LDC.Peremen /= #LDC.Gen.Subdivision.X LDC.Peremen
scoreboard players operation #LDC.Gen.Pos.Z LDC.Peremen /= #LDC.Gen.Subdivision.Z LDC.Peremen

#tellraw @a {"score":{"name":"#LDC.Gen.Pos.X","objective":"LDC.Peremen"}}
#tellraw @a {"score":{"name":"#LDC.Gen.Pos.Z","objective":"LDC.Peremen"}}

#Insert to strg
execute store result storage landscape: GeneralizedPosX double 1 run scoreboard players get #LDC.Gen.Pos.X LDC.Peremen
execute store result storage landscape: GeneralizedPosZ double 1 run scoreboard players get #LDC.Gen.Pos.Z LDC.Peremen

#Calc square 10^6
function core:generate/mountain/detail/calc_gp with storage landscape:

#Insert to score
execute store result score #LDC.Gen.GSP.X LDC.Peremen run data get storage landscape: GeneralizedPosX
execute store result score #LDC.Gen.GSP.Z LDC.Peremen run data get storage landscape: GeneralizedPosZ

#Insert sum to Y
execute store result score #LDC.Gen.Dist.R.0 LDC.Peremen run scoreboard players operation #LDC.Gen.GSP.X LDC.Peremen += #LDC.Gen.GSP.Z LDC.Peremen

#Calc 10^2
scoreboard players operation #LDC.Gen.Dist.R.0 LDC.Peremen /= #LDC.Postoy.10^3 LDC.Postoy
execute store result storage landscape: GeneralizedDistR double 0.1 run scoreboard players operation #LDC.Gen.Dist.R.0 LDC.Peremen *= #LDC.Postoy.-1 LDC.Postoy
function core:generate/mountain/detail/calc_pow_dist_r with storage landscape:
execute store result storage landscape: ListGDR[0] double 1.0000 run data get storage landscape: ListGDR[0]
execute store result storage landscape: ListGDR[1] double 0.5000 run data get storage landscape: ListGDR[1] 0.01
execute store result storage landscape: ListGDR[2] double 0.1666 run data get storage landscape: ListGDR[2] 0.0001
execute store result storage landscape: ListGDR[3] double 0.0416 run data get storage landscape: ListGDR[3] 0.000001

#Insert to score
execute store result score #LDC.Gen.GDR.0 LDC.Peremen run data get storage landscape: ListGDR[0]
execute store result score #LDC.Gen.GDR.1 LDC.Peremen run data get storage landscape: ListGDR[1]
execute store result score #LDC.Gen.GDR.2 LDC.Peremen run data get storage landscape: ListGDR[2]
execute store result score #LDC.Gen.GDR.3 LDC.Peremen run data get storage landscape: ListGDR[3]

#Calc sum 10^2
scoreboard players add #LDC.Gen.Pos.Y LDC.Peremen 100
scoreboard players operation #LDC.Gen.Pos.Y LDC.Peremen += #LDC.Gen.GDR.0 LDC.Peremen
scoreboard players operation #LDC.Gen.Pos.Y LDC.Peremen += #LDC.Gen.GDR.1 LDC.Peremen
scoreboard players operation #LDC.Gen.Pos.Y LDC.Peremen += #LDC.Gen.GDR.2 LDC.Peremen
scoreboard players operation #LDC.Gen.Pos.Y LDC.Peremen += #LDC.Gen.GDR.3 LDC.Peremen
#10^4
scoreboard players operation #LDC.Gen.Pos.Y LDC.Peremen *= #LDC.Postoy.137 LDC.Postoy
scoreboard players remove #LDC.Gen.Pos.Y LDC.Peremen 3698
#10^7
scoreboard players operation #LDC.Gen.Pos.Y LDC.Peremen *= #LDC.Gen.Height LDC.Peremen
scoreboard players operation #LDC.Gen.Pos.Y LDC.Peremen /= #LDC.Postoy.10^1 LDC.Postoy
scoreboard players operation #LDC.Gen.Pos.Y LDC.Peremen *= #LDC.Gen.Pos.Y.Height.Multiplier LDC.Peremen



#Mix
#Insert size to score
execute store result score #LDC.Gen.Size.List.SetBlock.Pos.Y.0 LDC.Peremen store result score #LDC.Gen.Size.List.SetBlock.Pos.Y.1 LDC.Peremen store result score #LDC.Gen.Size.List.SetBlock.Pos.Y.2 LDC.Peremen run data get storage landscape: SetBlock.PosY

execute if score #LDC.Gen.Count.Area LDC.Peremen matches 1.. if score #LDC.Gen.Pos.Count.Z.0 LDC.Peremen < #LDC.Gen.Mix.Z.0 LDC.Peremen run function core:generate/mountain/detail/interpolate_z
execute store result score #LDC.Gen.Mix.X.0.-1 LDC.Peremen run scoreboard players get #LDC.Gen.Mix.X.0 LDC.Peremen
$scoreboard players remove #LDC.Gen.Mix.X.0.-1 LDC.Peremen $(Adjust)
execute if score #LDC.Gen.Move.Times.To.X LDC.Peremen matches 1.. if score #LDC.Gen.Pos.Count.X.0 LDC.Peremen < #LDC.Gen.Mix.X.0.-1 LDC.Peremen if score #LDC.Gen.Pos.Count.Z.0 LDC.Peremen < #LDC.Gen.Mix.Z.1 LDC.Peremen run function core:generate/mountain/detail/interpolate_x


#10^4
execute store result storage landscape: Calculated.PosX double 1 run scoreboard players get #LDC.Gen.Pos.Count.X.0 LDC.Peremen
execute store result storage landscape: Calculated.PosY double 0.0000001 run scoreboard players get #LDC.Gen.Pos.Y LDC.Peremen
execute store result storage landscape: Calculated.PosZ double 1 run scoreboard players get #LDC.Gen.Pos.Count.Z.0 LDC.Peremen
data modify storage landscape: SetBlock.PosX append from storage landscape: Calculated.PosX
data modify storage landscape: SetBlock.PosY append from storage landscape: Calculated.PosY
data modify storage landscape: SetBlock.PosZ append from storage landscape: Calculated.PosZ


#Insert the pos of block on surface
execute store result score #LDC.Gen.Fill.Pos.Y.0 LDC.Peremen store result score #LDC.Gen.Fill.Pos.Y.1 LDC.Peremen store result score #LDC.Gen.Feature.Tree.Pos.Y.0 LDC.Peremen store result score #LDC.Gen.Water.Pos.Y.0 LDC.Peremen store result score #LDC.Gen.Water.Pos.Y.1 LDC.Peremen run data get storage landscape: Calculated.PosY 1000

#Calculate filling position
data modify storage landscape: Fill.PosX set from storage landscape: Calculated.PosX
data modify storage landscape: Fill.PosZ set from storage landscape: Calculated.PosZ
execute store result storage landscape: Fill.PosYAbove double 0.001 run scoreboard players remove #LDC.Gen.Fill.Pos.Y.0 LDC.Peremen 1000
execute store result storage landscape: Fill.PosYBelow double 0.001 run scoreboard players remove #LDC.Gen.Fill.Pos.Y.1 LDC.Peremen 5000

#Calculate water area
data modify storage landscape: Water.PosX set from storage landscape: Calculated.PosX
data modify storage landscape: Water.PosZ set from storage landscape: Calculated.PosZ
#execute store result storage landscape: Water.PosYAbove double 0.001 run scoreboard players remove #LDC.Gen.Water.Pos.Y.0 LDC.Peremen 1000
execute store result storage landscape: Water.PosYBelow double 0.001 run scoreboard players add #LDC.Gen.Water.Pos.Y.1 LDC.Peremen 1000


#Calculate pos to place tree
data modify storage landscape: Feature.PosX set from storage landscape: Calculated.PosX
data modify storage landscape: Feature.PosZ set from storage landscape: Calculated.PosZ
execute store result storage landscape: Feature.PosY double 0.001 run scoreboard players add #LDC.Gen.Feature.Tree.Pos.Y.0 LDC.Peremen 1000
execute store result score #LDC.Gen.Feature.Tree.Place LDC.Peremen run random value 1..1000
data modify storage landscape: Feature.SetTree set from storage landscape: Feature.Trees[0]
data modify storage landscape: Feature.Trees append from storage landscape: Feature.Trees[0]
data remove storage landscape: Feature.Trees[0]


#Setblock
execute if score #LDC.Gen.Pos.Count.X.0 LDC.Peremen < #LDC.Gen.Mix.X.1 LDC.Peremen if score #LDC.Gen.Pos.Count.Z.0 LDC.Peremen < #LDC.Gen.Mix.Z.1 LDC.Peremen run function core:generate/mountain/setblock with storage landscape: Calculated

#Fill
execute if score #LDC.Gen.Pos.Count.X.0 LDC.Peremen < #LDC.Gen.Mix.X.1 LDC.Peremen if score #LDC.Gen.Pos.Count.Z.0 LDC.Peremen < #LDC.Gen.Mix.Z.1 LDC.Peremen run function core:generate/mountain/detail/fill with storage landscape: Fill

#Water
execute if score #LDC.Gen.Water.Pos.Y.1 LDC.Peremen matches ..0 if score #LDC.Gen.Pos.Count.X.0 LDC.Peremen < #LDC.Gen.Mix.X.1 LDC.Peremen if score #LDC.Gen.Pos.Count.Z.0 LDC.Peremen < #LDC.Gen.Mix.Z.1 LDC.Peremen run function core:generate/mountain/detail/water with storage landscape: Water

#Trees
execute if score #LDC.Gen.Feature.Tree.Pos.Y.0 LDC.Peremen matches 1.. if score #LDC.Gen.Feature.Tree.Place LDC.Peremen <= #LDC.Gen.Feature.Tree.Rate LDC.Peremen if score #LDC.Gen.Pos.Count.X.0 LDC.Peremen < #LDC.Gen.Mix.X.1 LDC.Peremen if score #LDC.Gen.Pos.Count.Z.0 LDC.Peremen < #LDC.Gen.Mix.Z.1 LDC.Peremen run function core:generate/mountain/detail/trees with storage landscape: Feature


#End (Fake)
#execute if score #LDC.Gen.Move.Times.To.X LDC.Peremen = #LDC.Gen.Repeating.Times.Z LDC.Peremen run function core:generate/mountain/detail/reset


#Reset
scoreboard players set #LDC.Gen.Pos.X LDC.Peremen 0
scoreboard players set #LDC.Gen.Pos.Y LDC.Peremen 0
scoreboard players set #LDC.Gen.Pos.Z LDC.Peremen 0
scoreboard players set #LDC.Gen.Before.Pos.Y LDC.Peremen 0
data modify storage landscape: InsertFromY set value 0
