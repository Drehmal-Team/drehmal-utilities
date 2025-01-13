scoreboard players operation #cx ntils.z.cast.temp -= #sx ntils.z.cast.temp
scoreboard players operation #cy ntils.z.cast.temp -= #sy ntils.z.cast.temp
execute store result score #df ntils.z.cast.temp run scoreboard players operation #cz ntils.z.cast.temp -= #sz ntils.z.cast.temp
scoreboard players operation #df ntils.z.cast.temp > #cx ntils.z.cast.temp
scoreboard players operation #df ntils.z.cast.temp > #cy ntils.z.cast.temp
data modify storage ntils:api cast.ray.normal.out.normal set value [0d,0d,0d]
execute if score #cx ntils.z.cast.temp = #df ntils.z.cast.temp run return run execute store result storage ntils:api cast.ray.normal.out.normal[0] double -1 run data get storage ntils:z cast.ray.m.x
execute if score #cy ntils.z.cast.temp = #df ntils.z.cast.temp run return run execute store result storage ntils:api cast.ray.normal.out.normal[1] double -1 run data get storage ntils:z cast.ray.m.y
return run execute store result storage ntils:api cast.ray.normal.out.normal[2] double -1 run data get storage ntils:z cast.ray.m.z