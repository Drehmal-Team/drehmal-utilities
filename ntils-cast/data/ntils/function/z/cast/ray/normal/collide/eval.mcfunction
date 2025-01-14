data modify storage ntils:z cast.ray.boxes set from entity 00000000-0000-0000-0000-000002160ec0 item.components."minecraft:custom_data".ntils.z.cast.hitbox

scoreboard players operation #tx ntils.z.cast.temp = #cx ntils.z.cast.temp
scoreboard players operation #ty ntils.z.cast.temp = #cy ntils.z.cast.temp
scoreboard players operation #tz ntils.z.cast.temp = #cz ntils.z.cast.temp
execute if score #vx ntils.z.cast.temp matches 0.. run scoreboard players operation #tx ntils.z.cast.temp -= #sx ntils.z.cast.temp
execute if score #vy ntils.z.cast.temp matches 0.. run scoreboard players operation #ty ntils.z.cast.temp -= #sy ntils.z.cast.temp
execute if score #vz ntils.z.cast.temp matches 0.. run scoreboard players operation #tz ntils.z.cast.temp -= #sz ntils.z.cast.temp
execute if data storage ntils:z cast.ray.boxes[] run function ntils:z/cast/ray/normal/collide/shape/main
return run execute if score #df ntils.z.cast.temp < #d ntils.z.cast.temp