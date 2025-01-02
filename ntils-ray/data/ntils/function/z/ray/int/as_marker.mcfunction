data modify storage ntils:z ray.origin set from entity @s Pos
execute store result storage ntils:z ray.m.x int -1 run data get storage ntils:z ray.origin[0]
execute store result storage ntils:z ray.m.y int -1 run data get storage ntils:z ray.origin[1]
execute store result storage ntils:z ray.m.z int -1 run data get storage ntils:z ray.origin[2]
function ntils:z/ray/int/get_within with storage ntils:z ray.m
execute positioned .0 0 .0 positioned ^ ^ ^1 run teleport @s ~ ~ ~
data modify storage ntils:z ray.vector set from entity @s Pos

data modify storage ntils:z ray.m set value {x:1,y:1,z:1}
data modify storage ntils:z ray.n set value [0d,0d,0d]

# X ----------------------------------------------------------------------------- #
scoreboard players set #2^31-1 ntils.z.ray.temp 2147483647
execute store result score #dx ntils.z.ray.temp run data get storage ntils:z ray.origin[0] 2147483647
execute store result score #vx ntils.z.ray.temp store result score #svx ntils.z.ray.temp run data get storage ntils:z ray.vector[0] 46341
execute if score #vx ntils.z.ray.temp matches 1.. store result score #dx ntils.z.ray.temp run scoreboard players operation #2^31-1 ntils.z.ray.temp -= #dx ntils.z.ray.temp
scoreboard players set #sx ntils.z.ray.temp 2147483647
execute if score #vx ntils.z.ray.temp matches ..-1 store success storage ntils:z ray.m.x int -1 run scoreboard players operation #vx ntils.z.ray.temp *= #-1 ntils.z.const
scoreboard players operation #svx ntils.z.ray.temp /= #vx ntils.z.ray.temp
execute store result score #s/16x ntils.z.ray.temp store result score #sx2 ntils.z.ray.temp run scoreboard players operation #sx ntils.z.ray.temp /= #vx ntils.z.ray.temp
scoreboard players operation #s/16x ntils.z.ray.temp /= #16 ntils.z.const
scoreboard players operation #dx ntils.z.ray.temp /= #vx ntils.z.ray.temp

# Y ----------------------------------------------------------------------------- #
scoreboard players set #2^31-1 ntils.z.ray.temp 2147483647
execute store result score #dy ntils.z.ray.temp run data get storage ntils:z ray.origin[1] 2147483647
execute store result score #vy ntils.z.ray.temp store result score #svy ntils.z.ray.temp run data get storage ntils:z ray.vector[1] 46341
execute if score #vy ntils.z.ray.temp matches 1.. store result score #dy ntils.z.ray.temp run scoreboard players operation #2^31-1 ntils.z.ray.temp -= #dy ntils.z.ray.temp
scoreboard players set #sy ntils.z.ray.temp 2147483647
execute if score #vy ntils.z.ray.temp matches ..-1 store success storage ntils:z ray.m.y int -1 run scoreboard players operation #vy ntils.z.ray.temp *= #-1 ntils.z.const
scoreboard players operation #svy ntils.z.ray.temp /= #vy ntils.z.ray.temp
execute store result score #s/16y ntils.z.ray.temp store result score #sy2 ntils.z.ray.temp run scoreboard players operation #sy ntils.z.ray.temp /= #vy ntils.z.ray.temp
scoreboard players operation #s/16y ntils.z.ray.temp /= #16 ntils.z.const
scoreboard players operation #dy ntils.z.ray.temp /= #vy ntils.z.ray.temp

#  ----------------------------------------------------------------------------- #
scoreboard players set #2^31-1 ntils.z.ray.temp 2147483647
execute store result score #dz ntils.z.ray.temp run data get storage ntils:z ray.origin[2] 2147483647
execute store result score #vz ntils.z.ray.temp store result score #svz ntils.z.ray.temp run data get storage ntils:z ray.vector[2] 46341
execute if score #vz ntils.z.ray.temp matches 1.. store result score #dz ntils.z.ray.temp run scoreboard players operation #2^31-1 ntils.z.ray.temp -= #dz ntils.z.ray.temp
scoreboard players set #sz ntils.z.ray.temp 2147483647
execute if score #vz ntils.z.ray.temp matches ..-1 store success storage ntils:z ray.m.z int -1 run scoreboard players operation #vz ntils.z.ray.temp *= #-1 ntils.z.const
scoreboard players operation #svz ntils.z.ray.temp /= #vz ntils.z.ray.temp
execute store result score #s/16z ntils.z.ray.temp store result score #sz2 ntils.z.ray.temp run scoreboard players operation #sz ntils.z.ray.temp /= #vz ntils.z.ray.temp
scoreboard players operation #s/16z ntils.z.ray.temp /= #16 ntils.z.const
scoreboard players operation #dz ntils.z.ray.temp /= #vz ntils.z.ray.temp

scoreboard players set #hit ntils.z.ray.temp 0
scoreboard players set #hitdist ntils.z.ray.temp 2147483647
scoreboard players set #loop ntils.z.ray.temp 0
execute align xyz positioned ~.5 ~.5 ~.5 run return run function ntils:z/ray/test/main with storage ntils:z ray.m