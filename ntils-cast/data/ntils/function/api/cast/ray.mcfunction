# CAST/RAY
#
#   Casts a ray from ~ ~ ~ in the looking direction and determines what the ray hits.
#
# INPUT:
#   > Macro:
#       | Args, object. A series of optional macro inputs.
#       |   {
#       |       Type, string. The type of block hitbox to detect intersections with. Supports the following:
#       |           - "regular":    The outlines that appear when you hover over a block.
#       |           - "collision":  The actual collision mesh of the block.
#       |           Defaults to "regular" if unspecified.
#       |
#       |       Distance, number. The maximum allowable distance of the raycast, in blocks.
#       |           Defaults to 46300 blocks if unspecified.
#       |   }


execute unless score $ntils:cast.ENABLED ntils.API.singularity.flag matches 1.. run return fail

data modify storage ntils:z cast.ray.m set value {t:"regular"}

$data modify storage ntils:z cast.ray.d set value $(Args)
execute if data storage ntils:z cast.ray.d.Type run data modify storage ntils:z cast.ray.m.t set from storage ntils:z cast.ray.d.Type
scoreboard players set #d ntils.z.cast.temp 2145585985
execute if data storage ntils:z cast.ray.d.Distance store result score #d ntils.z.cast.temp run data get storage ntils:z cast.ray.d.Distance 46341
data modify storage ntils:api cast.ray.out set value {}

scoreboard players set #rtr ntils.z.cast.temp -1
execute summon marker run function ntils:z/cast/ray/main
return run execute if score #rtr ntils.z.cast.temp matches 1