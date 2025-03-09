# CAST/RAY/SLOW/START
#
#   Starts a vtrav slowcast on the @s entity. This slowcast can be imagined as breaking the behaviour of cast/ray/normal
#   over multiple ticks. Calling cast/ray/slow/loop will iterate the ray forward by a distance determined in the input
#   data, and will
#
# INPUT:
#   > Storage:
#       | ntils:api cast.ray.slow.in.step, number. The distance, in blocks, that the ray will travel each time cast/ray/slow/loop is called.
#
# OUTPUT:
#   > Misc:
#       | A slowcast iteration will be started on the @s entity. Calling cast/ray/slow/loop will cause an iteration "step" to occur.
#
# PERFORMANCE:

execute unless score $ntils:cast.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail
teleport @s ~ ~ ~ ~ ~

execute store result score @s ntils.z.cast.ray.slow.ds run data get storage ntils:api cast.ray.slow.in.step 46340

execute summon marker run function ntils:z/cast/ray/slow/as_marker

# bookshelf is so fucking cool --------------------------------------------------------------------------------
execute store result score @s ntils.z.cast.ray.slow.mx store result score @s ntils.z.cast.ray.slow.my run scoreboard players set @s ntils.z.cast.ray.slow.mz -1
execute store result score @s ntils.z.cast.ray.slow.df store result score @s ntils.z.cast.ray.slow.sy store result score @s ntils.z.cast.ray.slow.sz run scoreboard players set @s ntils.z.cast.ray.slow.sx 2147483647

# X -----------------------------------------------------------------------------------------------------------
execute store result score @s ntils.z.cast.ray.slow.vx run data get storage ntils:z cast.ray.vector[0] 46341
execute store result score @s ntils.z.cast.ray.slow.cx run data get storage ntils:z cast.ray.origin[0] -2147483648
execute if score @s ntils.z.cast.ray.slow.vx matches ..-1 run scoreboard players set @s ntils.z.cast.ray.slow.sx -2147483648
scoreboard players operation @s ntils.z.cast.ray.slow.sx /= @s ntils.z.cast.ray.slow.vx
scoreboard players operation @s ntils.z.cast.ray.slow.cx /= @s ntils.z.cast.ray.slow.vx
execute if score @s ntils.z.cast.ray.slow.vx matches 0.. store success score @s ntils.z.cast.ray.slow.mx run scoreboard players operation @s ntils.z.cast.ray.slow.cx += @s ntils.z.cast.ray.slow.sx

# Y -----------------------------------------------------------------------------------------------------------
execute store result score @s ntils.z.cast.ray.slow.vy run data get storage ntils:z cast.ray.vector[1] 46341
execute store result score @s ntils.z.cast.ray.slow.cy run data get storage ntils:z cast.ray.origin[1] -2147483648
execute if score @s ntils.z.cast.ray.slow.vy matches ..-1 run scoreboard players set @s ntils.z.cast.ray.slow.sy -2147483648
scoreboard players operation @s ntils.z.cast.ray.slow.sy /= @s ntils.z.cast.ray.slow.vy
scoreboard players operation @s ntils.z.cast.ray.slow.cy /= @s ntils.z.cast.ray.slow.vy
execute if score @s ntils.z.cast.ray.slow.vy matches 0.. store success score @s ntils.z.cast.ray.slow.my run scoreboard players operation @s ntils.z.cast.ray.slow.cy += @s ntils.z.cast.ray.slow.sy

# Z -----------------------------------------------------------------------------------------------------------
execute store result score @s ntils.z.cast.ray.slow.vz run data get storage ntils:z cast.ray.vector[2] 46341
execute store result score @s ntils.z.cast.ray.slow.cz run data get storage ntils:z cast.ray.origin[2] -2147483648
execute if score @s ntils.z.cast.ray.slow.vz matches ..-1 run scoreboard players set @s ntils.z.cast.ray.slow.sz -2147483648
scoreboard players operation @s ntils.z.cast.ray.slow.sz /= @s ntils.z.cast.ray.slow.vz
scoreboard players operation @s ntils.z.cast.ray.slow.cz /= @s ntils.z.cast.ray.slow.vz
execute if score @s ntils.z.cast.ray.slow.vz matches 0.. store success score @s ntils.z.cast.ray.slow.mz run scoreboard players operation @s ntils.z.cast.ray.slow.cz += @s ntils.z.cast.ray.slow.sz