#> main:weapon/particle/flame
#
# @within function main:weapon/

##Particle
$execute positioned ~ ~1 ~ run particle flame ^ ^ ^1 $(X) $(Y) $(Z) 1 0 force
$execute positioned ~ ~1.1 ~ run particle flame ^ ^ ^1 $(X) $(Y) $(Z) 1 0 force
$execute positioned ~ ~0.9 ~ run particle flame ^ ^ ^1 $(X) $(Y) $(Z) 1 0 force
$execute positioned ~ ~1 ~ run particle flame ^-0.1 ^ ^1 $(X) $(Y) $(Z) 1 0 force
$execute positioned ~ ~1 ~ run particle flame ^0.1 ^ ^1 $(X) $(Y) $(Z) 1 0 force
