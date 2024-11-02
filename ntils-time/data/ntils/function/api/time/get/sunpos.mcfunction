# TIME/GET/SUNPOS
#
# Gets the current rotation of the sun in the sky in yaw/pitch. Stores this result at ntils:api time.get.sunpos.out in the form {yaw:float,pitch:float}
#
# PERFORMANCE: Great
# Uses a lookup table and is therefore highly efficient.

execute unless score $ntils:time.ENABLED ntils.API.singularity.flag matches 1.. run return fail

execute store result storage ntils:z time.get.sunpos.m.t int 1 store result score #t ntils.z.time.temp run time query daytime
data modify storage ntils:api time.get.sunpos.out set value {yaw:-90f,pitch:0f}
function ntils:z/time/get/sunpos/macro with storage ntils:z time.get.sunpos.m
execute if score #t ntils.z.time.temp matches 6000..18000 run data modify storage ntils:api time.get.sunpos.out.yaw set value 90f