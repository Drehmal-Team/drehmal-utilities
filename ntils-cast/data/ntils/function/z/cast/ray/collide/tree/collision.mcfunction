execute if block ~ ~ ~ #ntils:api/cast/hitbox/collision/full run return run function ntils:z/cast/ray/collide/full

loot replace entity 00000000-0000-0000-0000-000002160ec0 container.0 loot ntils:api/cast/hitbox/collision
data modify storage ntils:z cast.ray.boxes set from entity 00000000-0000-0000-0000-000002160ec0 item.components."minecraft:custom_data".ntils.api.cast.hitbox.get

execute if score #vx ntils.z.cast.temp matches 0.. run scoreboard players operation #cx ntils.z.cast.temp -= #sx ntils.z.cast.temp
execute if score #vy ntils.z.cast.temp matches 0.. run scoreboard players operation #cy ntils.z.cast.temp -= #sy ntils.z.cast.temp
execute if score #vz ntils.z.cast.temp matches 0.. run scoreboard players operation #cz ntils.z.cast.temp -= #sz ntils.z.cast.temp
execute if data storage ntils:z cast.ray.boxes[] run function ntils:z/cast/ray/collide/shape/main
execute if score #vx ntils.z.cast.temp matches 0.. run scoreboard players operation #cx ntils.z.cast.temp += #sx ntils.z.cast.temp
execute if score #vy ntils.z.cast.temp matches 0.. run scoreboard players operation #cy ntils.z.cast.temp += #sy ntils.z.cast.temp
execute if score #vz ntils.z.cast.temp matches 0.. run scoreboard players operation #cz ntils.z.cast.temp += #sz ntils.z.cast.temp
return run execute if score #distfinal ntils.z.cast.temp < #d ntils.z.cast.temp