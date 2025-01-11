return fail
execute unless score $ntils:cast.ENABLED ntils.API.singularity.flag matches 1.. run return fail



execute positioned as @s run teleport @s ~ ~ ~ ~ ~
execute positioned .0 0 .0 positioned ^ ^ ^1 summon marker run function ntils:z/cast/ray/slow/rotate/as_marker

scoreboard players operation @s ntils.z.cast.ray.slow.cx -= @s ntils.z.cast.ray.slow.sx
scoreboard players operation @s ntils.z.cast.ray.slow.cy -= @s ntils.z.cast.ray.slow.sy
execute store result score #d ntils.z.cast.temp run scoreboard players operation @s ntils.z.cast.ray.slow.cz -= @s ntils.z.cast.ray.slow.sz
scoreboard players operation #d ntils.z.cast.temp > @s ntils.z.cast.ray.slow.cx
scoreboard players operation #d ntils.z.cast.temp > @s ntils.z.cast.ray.slow.cy

scoreboard players operation @s ntils.z.cast.ray.slow.cx += @s ntils.z.cast.ray.slow.sx
scoreboard players operation @s ntils.z.cast.ray.slow.cx -= #d ntils.z.cast.temp
scoreboard players operation @s ntils.z.cast.ray.slow.cx -= @s ntils.z.cast.ray.slow.sx
scoreboard players operation @s ntils.z.cast.ray.slow.cx *= @s ntils.z.cast.ray.slow.vx
execute if score @s ntils.z.cast.ray.slow.vx matches 0.. run scoreboard players remove @s ntils.z.cast.ray.slow.cx 2147483647
scoreboard players operation @s ntils.z.cast.ray.slow.cy += @s ntils.z.cast.ray.slow.sy
scoreboard players operation @s ntils.z.cast.ray.slow.cy -= #d ntils.z.cast.temp
scoreboard players operation @s ntils.z.cast.ray.slow.cy -= @s ntils.z.cast.ray.slow.sy
scoreboard players operation @s ntils.z.cast.ray.slow.cy *= @s ntils.z.cast.ray.slow.vy
execute if score @s ntils.z.cast.ray.slow.vy matches 0.. run scoreboard players remove @s ntils.z.cast.ray.slow.cy 2147483647
scoreboard players operation @s ntils.z.cast.ray.slow.cz += @s ntils.z.cast.ray.slow.sz
scoreboard players operation @s ntils.z.cast.ray.slow.cz -= #d ntils.z.cast.temp
scoreboard players operation @s ntils.z.cast.ray.slow.cz -= @s ntils.z.cast.ray.slow.sz
scoreboard players operation @s ntils.z.cast.ray.slow.cz *= @s ntils.z.cast.ray.slow.vz
execute if score @s ntils.z.cast.ray.slow.vz matches 0.. run scoreboard players remove @s ntils.z.cast.ray.slow.cz 2147483647

execute store result score @s ntils.z.cast.ray.slow.mx store result score @s ntils.z.cast.ray.slow.my run scoreboard players set @s ntils.z.cast.ray.slow.mz -1
execute store result score @s ntils.z.cast.ray.slow.df store result score @s ntils.z.cast.ray.slow.sy store result score @s ntils.z.cast.ray.slow.sz run scoreboard players set @s ntils.z.cast.ray.slow.sx 2147483647

# X -----------------------------------------------------------------------------------------------------------
execute store result score @s ntils.z.cast.ray.slow.vx run data get storage ntils:z cast.ray.vector[0] 46341
execute if score @s ntils.z.cast.ray.slow.vx matches ..-1 run scoreboard players set @s ntils.z.cast.ray.slow.sx -2147483648
scoreboard players operation @s ntils.z.cast.ray.slow.sx /= @s ntils.z.cast.ray.slow.vx
scoreboard players operation @s ntils.z.cast.ray.slow.cx /= @s ntils.z.cast.ray.slow.vx
execute if score @s ntils.z.cast.ray.slow.vx matches 0.. store success score @s ntils.z.cast.ray.slow.mx run scoreboard players operation @s ntils.z.cast.ray.slow.cx += @s ntils.z.cast.ray.slow.sx

# Y -----------------------------------------------------------------------------------------------------------
execute store result score @s ntils.z.cast.ray.slow.vy run data get storage ntils:z cast.ray.vector[1] 46341
execute if score @s ntils.z.cast.ray.slow.vy matches ..-1 run scoreboard players set @s ntils.z.cast.ray.slow.sy -2147483648
scoreboard players operation @s ntils.z.cast.ray.slow.sy /= @s ntils.z.cast.ray.slow.vy
scoreboard players operation @s ntils.z.cast.ray.slow.cy /= @s ntils.z.cast.ray.slow.vy
execute if score @s ntils.z.cast.ray.slow.vy matches 0.. store success score @s ntils.z.cast.ray.slow.my run scoreboard players operation @s ntils.z.cast.ray.slow.cy += @s ntils.z.cast.ray.slow.sy

# Z -----------------------------------------------------------------------------------------------------------
execute store result score @s ntils.z.cast.ray.slow.vz run data get storage ntils:z cast.ray.vector[2] 46341
execute if score @s ntils.z.cast.ray.slow.vz matches ..-1 run scoreboard players set @s ntils.z.cast.ray.slow.sz -2147483648
scoreboard players operation @s ntils.z.cast.ray.slow.sz /= @s ntils.z.cast.ray.slow.vz
scoreboard players operation @s ntils.z.cast.ray.slow.cz /= @s ntils.z.cast.ray.slow.vz
execute if score @s ntils.z.cast.ray.slow.vz matches 0.. store success score @s ntils.z.cast.ray.slow.mz run scoreboard players operation @s ntils.z.cast.ray.slow.cz += @s ntils.z.cast.ray.slow.sz