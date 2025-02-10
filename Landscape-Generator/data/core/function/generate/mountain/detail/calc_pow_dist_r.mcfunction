#> core:generate/mountain/detail/calc_pow_dist_r
#
# 
#
# @within function core:generate/mountain/

#p1-p2
$execute store result storage landscape: ListGDR[1] double $(GeneralizedDistR) store result storage landscape: ListGDR[0] double 1 run data get storage landscape: GeneralizedDistR

#p3
$execute store result storage landscape: ListGDR[2] double $(GeneralizedDistR) run data get storage landscape: ListGDR[1] 1

#p4
$execute store result storage landscape: ListGDR[3] double $(GeneralizedDistR) run data get storage landscape: ListGDR[1] $(GeneralizedDistR)

