scoreboard players operation #cx ntils.z.cast.temp = #dx ntils.z.cast.temp
scoreboard players operation #cy ntils.z.cast.temp = #dy ntils.z.cast.temp
scoreboard players operation #cz ntils.z.cast.temp = #dz ntils.z.cast.temp

scoreboard players operation #sx3 ntils.z.cast.temp = #sx ntils.z.cast.temp
execute if score #svx ntils.z.cast.temp matches 1 store result score #cx ntils.z.cast.temp run scoreboard players operation #sx3 ntils.z.cast.temp -= #cx ntils.z.cast.temp
scoreboard players operation #sy3 ntils.z.cast.temp = #sy ntils.z.cast.temp
execute if score #svy ntils.z.cast.temp matches 1 store result score #cy ntils.z.cast.temp run scoreboard players operation #sy3 ntils.z.cast.temp -= #cy ntils.z.cast.temp
scoreboard players operation #sz3 ntils.z.cast.temp = #sz ntils.z.cast.temp
execute if score #svz ntils.z.cast.temp matches 1 store result score #cz ntils.z.cast.temp run scoreboard players operation #sz3 ntils.z.cast.temp -= #cz ntils.z.cast.temp
#return run function ntils:z/cast/test/with/block
execute if block ~ ~ ~ #ntils:api/cast/hitbox/collision/full run return run function ntils:z/cast/test/with/block

loot replace entity 00000000-0000-0000-0000-000002160ec0 container.0 loot ntils:api/cast/hitbox/collision
data modify storage ntils:z cast.box set from entity 00000000-0000-0000-0000-000002160ec0 item.components."minecraft:custom_data".ntils.api.cast.hitbox.get

execute if data storage ntils:z cast.box[] run return run function ntils:z/cast/test/box with storage ntils:z cast.m