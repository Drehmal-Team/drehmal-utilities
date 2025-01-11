# CAST/RAY/NORMAL
#
#   Casts a ray from ~ ~ ~ in the looking direction and determines what the ray hits.
#
# INPUT:
#   > Storage:
#       | ntils:api cast.ray.normal.in.type, string. The type of block hitbox to detect intersections with. Supports the following:
#       |       - "regular":    The outlines that appear when you hover over a block.
#       |       - "collision":  The actual collision mesh of the block.
#       |       Optional. Defaults to "regular" if unspecified.
#       |
#       | ntils:api cast.ray.normal.in.distance, number. The maximum allowable distance of the raycast, in blocks.
#       |       Optional. Defaults to 46300 blocks if unspecified.
#       |
#       | ntils:api cast.ray.normal.in.at_block, string. A command to run at the block that the ray intersects. 
#       |       Optional. Always runs in the exact middle of the block (at 'execute align xyz positioned ~.5 ~.5 ~.5`)
#       |
#       | ntils:api cast.ray.normal.in.at_point, string. A command to run at the point of ray intersection.
#       |       Optional.
#
# OUTPUT:
#   > Storage:
#       | ntils:api cast.ray.out.distance, double. The distance, in blocks, from the ~ ~ ~ context to the ray intersection.
#       |
#       | ntils:api cast.ray.out.normal, int list (3). The normal of the surface intersected by the ray.
#   > Return:
#       | Success if the ray intersects a block, Failure otherwise.
#
# PERFORMANCE: Okay
#   Varies heavily depending on the distance the ray travels and the amount of irregular blocks it has
#   to evaulate. In a best-case scenario, the performance impact is negligable, but forcing the ray to
#   travel through dozens of complex blocks (cauldrons, anvils, etc) will cause a measurable impact.

execute unless score $ntils:cast.ENABLED ntils.API.singularity.flag matches 1.. run return fail

data modify storage ntils:z cast.ray.m set value {t:"regular"}
scoreboard players set #d ntils.z.cast.temp 2145585985

# evaluate storage inputs
execute if data storage ntils:api cast.ray.normal.in.type run data modify storage ntils:z cast.ray.m.t set from storage ntils:api cast.ray.normal.in.type
execute if data storage ntils:api cast.ray.normal.in.distance store result score #d ntils.z.cast.temp run data get storage ntils:api cast.ray.normal.in.distance 46341
execute if data storage ntils:api cast.ray.normal.in.at_block run data modify storage ntils:z cast.ray.m.b set from storage ntils:api cast.ray.normal.in.at_block
execute if data storage ntils:api cast.ray.normal.in.at_point run data modify storage ntils:z cast.ray.m.p set from storage ntils:api cast.ray.normal.in.at_point
data modify storage ntils:api cast.ray.out set value {}

execute summon marker run function ntils:z/cast/ray/normal/main
execute if score #df ntils.z.cast.temp > #d ntils.z.cast.temp run return fail

execute store result storage ntils:z cast.ray.m.d double 0.0000215791631601 run scoreboard players get #df ntils.z.cast.temp
data modify storage ntils:api cast.ray.out.distance set from storage ntils:z cast.ray.m.d
execute if data storage ntils:api cast.ray.normal.in.at_point run function ntils:z/cast/ray/at_point with storage ntils:z cast.ray.m
return 1