# CAST/RAY/SLOW/START
#
#   Starts a vtrav slowcast on the @s entity. This slowcast can be imagined as breaking the behaviour of cast/ray/normal
#   over multiple ticks. Calling cast/ray/slow/loop will iterate the ray forward by a distance determined in the input
#   data, and will
#
# INPUT:
#   > Storage:
#       | ntils:api cast.ray.slow.in.type, string. The type of block hitbox to detect intersections with. Supports the following:
#       |       - "regular":    The outlines that appear when you hover over a block.
#       |       - "collision":  The actual collision mesh of the block.
#       |       Optional. Defaults to "regular" if unspecified.
#       |
#       | ntils:api cast.ray.slow.in.at_block, string. A command to run at the block that the ray intersects. 
#       |       Optional. Always runs in the exact middle of the block (at 'execute align xyz positioned ~.5 ~.5 ~.5`)
#       |
#       | ntils:api cast.ray.slow.in.at_point, string. A command to run at the point of ray intersection.
#       |       Optional. If unspecified, defaults to teleporting the @s entity to this location.
#       |
#       | ntils:api cast.ray.slow.in.at_failure, string. If the ray fails to intersect any blocks but still has distance
#       |           to travel, this command will be called at the furthest point reached during the raycast.
#       |           This is equivalent to calling a function at ^ ^ ^<in.step>
#       |       Optional. If unspecified, defaults to teleporting the @s entity to this location.
#
# PERFORMANCE:

execute unless score $ntils:cast.ENABLED ntils.API.singularity.flag matches 1.. run return fail

data modify storage ntils:z cast.ray.m set value {t:"regular",f:"teleport @s ~ ~ ~",p:"teleport @s ~ ~ ~"}
execute if data storage ntils:api cast.ray.slow.in.type run data modify storage ntils:z cast.ray.m.t set from storage ntils:api cast.ray.slow.in.type
execute if data storage ntils:api cast.ray.slow.in.at_point run data modify storage ntils:z cast.ray.m.p set from storage ntils:api cast.ray.slow.in.at_point
execute store result storage ntils:z cast.ray.m.x int 1 run scoreboard players get @s ntils.z.cast.ray.slow.mx
execute store result storage ntils:z cast.ray.m.y int 1 run scoreboard players get @s ntils.z.cast.ray.slow.my
execute store result storage ntils:z cast.ray.m.z int 1 run scoreboard players get @s ntils.z.cast.ray.slow.mz

execute at @s align xyz positioned ~.5 ~.5 ~.5 run function ntils:z/cast/ray/slow/traverse/loop with storage ntils:z cast.ray.m
execute unless score @s ntils.z.cast.ray.slow.df > @s ntils.z.cast.ray.slow.ds at @s run return run function ntils:z/cast/ray/slow/term

execute store result storage ntils:z cast.ray.m.d double 0.0000215791631601 run scoreboard players get @s ntils.z.cast.ray.slow.ds
scoreboard players operation @s ntils.z.cast.ray.slow.cx -= @s ntils.z.cast.ray.slow.ds
scoreboard players operation @s ntils.z.cast.ray.slow.cy -= @s ntils.z.cast.ray.slow.ds
scoreboard players operation @s ntils.z.cast.ray.slow.cz -= @s ntils.z.cast.ray.slow.ds
execute at @s run function ntils:z/cast/ray/slow/fail with storage ntils:z cast.ray.m
return fail