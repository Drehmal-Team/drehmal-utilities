scoreboard players operation @s ntils.z.cast.ray.slow.cx -= @s ntils.z.cast.ray.slow.sx
scoreboard players operation @s ntils.z.cast.ray.slow.cy -= @s ntils.z.cast.ray.slow.sy
execute store result score @s ntils.z.cast.ray.slow.df run scoreboard players operation @s ntils.z.cast.ray.slow.cz -= @s ntils.z.cast.ray.slow.sz
scoreboard players operation @s ntils.z.cast.ray.slow.df > @s ntils.z.cast.ray.slow.cx
scoreboard players operation @s ntils.z.cast.ray.slow.df > @s ntils.z.cast.ray.slow.cy
data modify storage ntils:api cast.ray.slow.out.normal set value [0d,0d,0d]
execute if score @s ntils.z.cast.ray.slow.cx = @s ntils.z.cast.ray.slow.df run return run execute store result storage ntils:api cast.ray.slow.out.normal[0] double -1 run data get storage ntils:z cast.ray.m.x
execute if score @s ntils.z.cast.ray.slow.cy = @s ntils.z.cast.ray.slow.df run return run execute store result storage ntils:api cast.ray.slow.out.normal[1] double -1 run data get storage ntils:z cast.ray.m.y
return run execute store result storage ntils:api cast.ray.slow.out.normal[2] double -1 run data get storage ntils:z cast.ray.m.z
return 1