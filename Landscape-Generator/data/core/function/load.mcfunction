#> core:load
# First
# Generalization set value 1264d
# GeneralizedLength set value 2526d
#
# Recommended (Stable)
# Generalization set value 1000d
# GeneralizedLength set value 2000d
# Height set value 2000d
# Subdivision set value [10000d,10000d]
# GenerateStartPoint set value [0d,0d]
# Mix set value 20
# RandMin set value 1
# RandMax set value 3
# Adjust set value 1
#
# Recommended (Stable)
# Height set value 1500d
# GenerateStartPoint set value [0d,0d]
# Subdivision set value [17600d,17600d]
# Generalization set value 1000d
# GeneralizedLength set value 2000d
# Mix set value 18
# InsertFromY set value 0
# RepeatingTimesX set value 16
# RepeatingTimesZ set value 16
# RandMin set value 5
# RandMax set value 100
# Adjust set value 2
#
# summon marker ~ ~ ~ {Tags:["LDC.AM.Start"]}
#
# @public

#kill @e[type=marker]
#scoreboard players reset *

## Reload
	execute as @e[type=marker,tag=LDC.AM.Start] run function core:generate/mountain/detail/reset

	##Storage
data modify storage landscape: Height set value 1500d
data modify storage landscape: Subdivision set value [17600d,17600d]
data modify storage landscape: Generalization set value 1000d
data modify storage landscape: GeneralizedLength set value 2000d

#Initialization
data modify storage landscape: GenerateStartPoint set value [0d,0d]
data modify storage landscape: GeneralizedPosX set value 0d
data modify storage landscape: GeneralizedPosZ set value 0d
data modify storage landscape: GeneralizedDistR set value 0d
data modify storage landscape: ListGDR set value [0d,0d,0d,0d]
data modify storage landscape: STG set value [0d,0d]
data modify storage landscape: STGL set value [0d,0d]
data modify storage landscape: Calculated.PosX set value 0d
data modify storage landscape: Calculated.PosY set value 0d
data modify storage landscape: Calculated.PosZ set value 0d
data modify storage landscape: WarpTo.PosX set value 0
data modify storage landscape: WarpTo.PosY set value 0
data modify storage landscape: WarpTo.PosZ set value 0
data modify storage landscape: Mix set value 18
data modify storage landscape: InsertFromY set value 0
data modify storage landscape: RepeatingTimesX set value 4
data modify storage landscape: RepeatingTimesZ set value 4
data modify storage landscape: RandMin set value -15
data modify storage landscape: RandMax set value 15
data modify storage landscape: Adjust set value 2
data modify storage landscape: Feature.Tree set value 0b
data modify storage landscape: Feature.TreeRate set value 10
data modify storage landscape: Feature.Trees set value ["oak","patch_grass","birch"]
data modify storage landscape: Feature.SetTree set value "patch_grass"
data modify storage landscape: Feature.PosX set value 0d
data modify storage landscape: Feature.PosY set value 0d
data modify storage landscape: Feature.PosZ set value 0d
data modify storage landscape: Water.Turn set value 0b
data modify storage landscape: Water.PosX set value 0d
data modify storage landscape: Water.PosYAbove set value 0d
data modify storage landscape: Water.PosYBelow set value 0d
data modify storage landscape: Water.PosZ set value 0d
data remove storage landscape: SetBlock.PosX
data remove storage landscape: SetBlock.PosY
data remove storage landscape: SetBlock.PosZ

#Add
scoreboard objectives add LDC.Peremen dummy
scoreboard objectives add LDC.Postoy dummy



##Set
#Initialization
scoreboard players set #LDC.Gen.Pos.Count.X LDC.Peremen 0
scoreboard players set #LDC.Gen.Pos.Count.Z LDC.Peremen 0
scoreboard players set #LDC.Gen.STGL.X LDC.Peremen 0
scoreboard players set #LDC.Gen.STGL.Z LDC.Peremen 0
scoreboard players set #LDC.Gen.Pos.Count.X.0 LDC.Peremen -1
scoreboard players set #LDC.Gen.Pos.Count.Z.0 LDC.Peremen 0

#Postoy
scoreboard players set #LDC.Postoy.-1 LDC.Postoy -1
scoreboard players set #LDC.Postoy.10^1 LDC.Postoy 10
scoreboard players set #LDC.Postoy.10^2 LDC.Postoy 100
scoreboard players set #LDC.Postoy.10^3 LDC.Postoy 1000
scoreboard players set #LDC.Postoy.137 LDC.Postoy 137
