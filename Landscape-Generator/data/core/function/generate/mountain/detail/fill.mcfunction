#> core:generate/mountain/detail/fill
#
# 
#
# @within function core:generate/mountain/

#$execute as @e[type=marker,tag=LDC.AM.Start] at @s run fill ~$(PosX) ~$(PosYAbove) ~$(PosZ) ~$(PosX) ~$(PosYBelow) ~$(PosZ) dirt
$execute as @e[type=marker,tag=LDC.AM.Start] at @s run fill ~$(PosX) ~$(PosYAbove) ~$(PosZ) ~$(PosX) -64 ~$(PosZ) dirt