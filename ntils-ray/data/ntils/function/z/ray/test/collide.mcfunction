scoreboard players operation #cx ntils.z.ray.temp = #dx ntils.z.ray.temp
scoreboard players operation #cy ntils.z.ray.temp = #dy ntils.z.ray.temp
scoreboard players operation #cz ntils.z.ray.temp = #dz ntils.z.ray.temp

scoreboard players operation #sx3 ntils.z.ray.temp = #sx ntils.z.ray.temp
execute if score #svx ntils.z.ray.temp matches 1 store result score #cx ntils.z.ray.temp run scoreboard players operation #sx3 ntils.z.ray.temp -= #cx ntils.z.ray.temp
scoreboard players operation #sy3 ntils.z.ray.temp = #sy ntils.z.ray.temp
execute if score #svy ntils.z.ray.temp matches 1 store result score #cy ntils.z.ray.temp run scoreboard players operation #sy3 ntils.z.ray.temp -= #cy ntils.z.ray.temp
scoreboard players operation #sz3 ntils.z.ray.temp = #sz ntils.z.ray.temp
execute if score #svz ntils.z.ray.temp matches 1 store result score #cz ntils.z.ray.temp run scoreboard players operation #sz3 ntils.z.ray.temp -= #cz ntils.z.ray.temp
#return run function ntils:z/ray/test/with/block
execute if block ~ ~ ~ #ntils:api/ray/hitbox/cube run return run function ntils:z/ray/test/with/block

loot replace entity 00000000-0000-0000-0000-000002160ec0 container.0 loot ntils:api/ray/hitbox/collision
data modify storage ntils:z ray.box set from entity 00000000-0000-0000-0000-000002160ec0 item.components."minecraft:custom_data".ntils.api.ray.hitbox.collision

execute if data storage ntils:z ray.box[] run return run function ntils:z/ray/test/box with storage ntils:z ray.m