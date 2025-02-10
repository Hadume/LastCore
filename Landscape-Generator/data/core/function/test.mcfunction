#> core:test
#
# 
#
# @within function core:tick

##$setblock ~ ~ ~ $(block)


$execute store result storage test: pos_x[0] int 1 run data get storage test: pos_x[0] $(pos_x)

#$execute store result storage landscape: STG[0] double 1 run data get storage landscape: Subdivision[0] $(Generalization)

#$execute store result storage test: num double $(num) run data get storage test: num