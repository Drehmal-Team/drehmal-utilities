scoreboard players operation @s ntils.z.cast.ray.slow.df = #tmi ntils.z.cast.temp
data modify storage ntils:api cast.ray.slow.out.normal set value [0d,0d,0d]
execute if score #by1 ntils.z.cast.temp = #tmi ntils.z.cast.temp run return run execute store result storage ntils:api cast.ray.slow.out.normal[1] double -1 run data get storage ntils:z cast.ray.m.y
execute if score #bz1 ntils.z.cast.temp = #tmi ntils.z.cast.temp run return run execute store result storage ntils:api cast.ray.slow.out.normal[2] double -1 run data get storage ntils:z cast.ray.m.z
execute store result storage ntils:api cast.ray.slow.out.normal[0] double -1 run data get storage ntils:z cast.ray.m.x