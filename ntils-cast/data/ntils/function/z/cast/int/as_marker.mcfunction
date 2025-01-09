data modify storage ntils:z cast.origin set from entity @s Pos
execute store result storage ntils:z cast.m.x int -1 run data get storage ntils:z cast.origin[0]
execute store result storage ntils:z cast.m.y int -1 run data get storage ntils:z cast.origin[1]
execute store result storage ntils:z cast.m.z int -1 run data get storage ntils:z cast.origin[2]
function ntils:z/cast/int/get_within with storage ntils:z cast.m
execute positioned .0 0 .0 positioned ^ ^ ^1 run teleport @s ~ ~ ~
data modify storage ntils:z cast.vector set from entity @s Pos

data modify storage ntils:z cast.m set value {x:1,y:1,z:1}
data modify storage ntils:z cast.n set value [0d,0d,0d]

# X ----------------------------------------------------------------------------- #
scoreboard players set #2^31-1 ntils.z.cast.temp 2147483647
execute store result score #dx ntils.z.cast.temp run data get storage ntils:z cast.origin[0] 2147483647
execute store result score #vx ntils.z.cast.temp store result score #svx ntils.z.cast.temp run data get storage ntils:z cast.vector[0] 46341
execute if score #vx ntils.z.cast.temp matches 1.. store result score #dx ntils.z.cast.temp run scoreboard players operation #2^31-1 ntils.z.cast.temp -= #dx ntils.z.cast.temp
scoreboard players set #sx ntils.z.cast.temp 2147483647
execute if score #vx ntils.z.cast.temp matches ..-1 store success storage ntils:z cast.m.x int -1 run scoreboard players operation #vx ntils.z.cast.temp *= #-1 ntils.z.const
scoreboard players operation #svx ntils.z.cast.temp /= #vx ntils.z.cast.temp
execute store result score #s/16x ntils.z.cast.temp store result score #sx2 ntils.z.cast.temp run scoreboard players operation #sx ntils.z.cast.temp /= #vx ntils.z.cast.temp
scoreboard players operation #s/16x ntils.z.cast.temp /= #16 ntils.z.const
scoreboard players operation #dx ntils.z.cast.temp /= #vx ntils.z.cast.temp

# Y ----------------------------------------------------------------------------- #
scoreboard players set #2^31-1 ntils.z.cast.temp 2147483647
execute store result score #dy ntils.z.cast.temp run data get storage ntils:z cast.origin[1] 2147483647
execute store result score #vy ntils.z.cast.temp store result score #svy ntils.z.cast.temp run data get storage ntils:z cast.vector[1] 46341
execute if score #vy ntils.z.cast.temp matches 1.. store result score #dy ntils.z.cast.temp run scoreboard players operation #2^31-1 ntils.z.cast.temp -= #dy ntils.z.cast.temp
scoreboard players set #sy ntils.z.cast.temp 2147483647
execute if score #vy ntils.z.cast.temp matches ..-1 store success storage ntils:z cast.m.y int -1 run scoreboard players operation #vy ntils.z.cast.temp *= #-1 ntils.z.const
scoreboard players operation #svy ntils.z.cast.temp /= #vy ntils.z.cast.temp
execute store result score #s/16y ntils.z.cast.temp store result score #sy2 ntils.z.cast.temp run scoreboard players operation #sy ntils.z.cast.temp /= #vy ntils.z.cast.temp
scoreboard players operation #s/16y ntils.z.cast.temp /= #16 ntils.z.const
scoreboard players operation #dy ntils.z.cast.temp /= #vy ntils.z.cast.temp

#  ----------------------------------------------------------------------------- #
scoreboard players set #2^31-1 ntils.z.cast.temp 2147483647
execute store result score #dz ntils.z.cast.temp run data get storage ntils:z cast.origin[2] 2147483647
execute store result score #vz ntils.z.cast.temp store result score #svz ntils.z.cast.temp run data get storage ntils:z cast.vector[2] 46341
execute if score #vz ntils.z.cast.temp matches 1.. store result score #dz ntils.z.cast.temp run scoreboard players operation #2^31-1 ntils.z.cast.temp -= #dz ntils.z.cast.temp
scoreboard players set #sz ntils.z.cast.temp 2147483647
execute if score #vz ntils.z.cast.temp matches ..-1 store success storage ntils:z cast.m.z int -1 run scoreboard players operation #vz ntils.z.cast.temp *= #-1 ntils.z.const
scoreboard players operation #svz ntils.z.cast.temp /= #vz ntils.z.cast.temp
execute store result score #s/16z ntils.z.cast.temp store result score #sz2 ntils.z.cast.temp run scoreboard players operation #sz ntils.z.cast.temp /= #vz ntils.z.cast.temp
scoreboard players operation #s/16z ntils.z.cast.temp /= #16 ntils.z.const
scoreboard players operation #dz ntils.z.cast.temp /= #vz ntils.z.cast.temp

scoreboard players set #hit ntils.z.cast.temp 0
scoreboard players set #hitdist ntils.z.cast.temp 2147483647
scoreboard players set #loop ntils.z.cast.temp 0
execute align xyz positioned ~.5 ~.5 ~.5 run return run function ntils:z/cast/test/main with storage ntils:z cast.m