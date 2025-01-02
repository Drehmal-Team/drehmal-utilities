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

#data modify storage ntils:z ray.box set value [[4b,0b,4b,12b,16b,12b]]
data modify storage ntils:z ray.box set value [[0b,0b,0b,16b,8b,16b],[0b,8b,0b,8b,16b,16b]]

execute if data storage ntils:z ray.box[] run return run function ntils:z/ray/test/box with storage ntils:z ray.m