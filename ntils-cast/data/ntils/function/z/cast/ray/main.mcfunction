data modify storage ntils:z cast.ray.origin set from entity @s Pos

execute store result storage ntils:z cast.ray.m.x int -1 run data get storage ntils:z cast.ray.origin[0]
execute store result storage ntils:z cast.ray.m.y int -1 run data get storage ntils:z cast.ray.origin[1]
execute store result storage ntils:z cast.ray.m.z int -1 run data get storage ntils:z cast.ray.origin[2]

function ntils:z/cast/ray/get_within with storage ntils:z cast.ray.m
data modify storage ntils:z cast.ray.origin set from entity @s Pos
execute positioned .0 0 .0 run teleport @s ^ ^ ^1
data modify storage ntils:z cast.ray.vector set from entity @s Pos

data modify storage ntils:z cast.ray.m merge value {x:1,y:1,z:1}

# bookshelf is so fucking cool --------------------------------------------------------------------------------
execute store result score #sy ntils.z.cast.temp store result score #sz ntils.z.cast.temp run scoreboard players set #sx ntils.z.cast.temp 2147483647

# X -----------------------------------------------------------------------------------------------------------
execute store result score #vx ntils.z.cast.temp run data get storage ntils:z cast.ray.vector[0] 46341
execute store result score #cx ntils.z.cast.temp run data get storage ntils:z cast.ray.origin[0] -2147483648
execute if score #vx ntils.z.cast.temp matches ..-1 store success storage ntils:z cast.ray.m.x int -1 run scoreboard players set #sx ntils.z.cast.temp -2147483648
scoreboard players operation #sx ntils.z.cast.temp /= #vx ntils.z.cast.temp
scoreboard players operation #cx ntils.z.cast.temp /= #vx ntils.z.cast.temp
execute if score #cx ntils.z.cast.temp matches ..-1 run scoreboard players operation #cx ntils.z.cast.temp += #sx ntils.z.cast.temp

# Y -----------------------------------------------------------------------------------------------------------
execute store result score #vy ntils.z.cast.temp run data get storage ntils:z cast.ray.vector[1] 46341
execute store result score #cy ntils.z.cast.temp run data get storage ntils:z cast.ray.origin[1] -2147483648
execute if score #vy ntils.z.cast.temp matches ..-1 store success storage ntils:z cast.ray.m.y int -1 run scoreboard players set #sy ntils.z.cast.temp -2147483648
scoreboard players operation #sy ntils.z.cast.temp /= #vy ntils.z.cast.temp
scoreboard players operation #cy ntils.z.cast.temp /= #vy ntils.z.cast.temp
execute if score #cy ntils.z.cast.temp matches ..-1 run scoreboard players operation #cy ntils.z.cast.temp += #sy ntils.z.cast.temp

# Z -----------------------------------------------------------------------------------------------------------
execute store result score #vz ntils.z.cast.temp run data get storage ntils:z cast.ray.vector[2] 46341
execute store result score #cz ntils.z.cast.temp run data get storage ntils:z cast.ray.origin[2] -2147483648
execute if score #vz ntils.z.cast.temp matches ..-1 store success storage ntils:z cast.ray.m.z int -1 run scoreboard players set #sz ntils.z.cast.temp -2147483648
scoreboard players operation #sz ntils.z.cast.temp /= #vz ntils.z.cast.temp
scoreboard players operation #cz ntils.z.cast.temp /= #vz ntils.z.cast.temp
execute if score #cz ntils.z.cast.temp matches ..-1 run scoreboard players operation #cz ntils.z.cast.temp += #sz ntils.z.cast.temp

execute store success score #rtr ntils.z.cast.temp run function ntils:z/cast/ray/traverse/loop with storage ntils:z cast.ray.m

teleport @s ~ -10000 ~
kill @s