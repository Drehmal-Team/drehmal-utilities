execute positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
data modify storage ntils:z tempMid set from entity @s Pos

execute unless score #DISTANCE_SCALE# ntils.API matches 1.. run scoreboard players set #DISTANCE_SCALE# ntils.API 100

execute store result score @s ntils.p.x3 run data get storage ntils:z tempMid[0] 100
execute store result score @s ntils.p.y3 run data get storage ntils:z tempMid[1] 100
execute store result score @s ntils.p.z3 run data get storage ntils:z tempMid[2] 100

scoreboard players operation #mod ntils.temp = #sqrt_out ntils.temp
scoreboard players operation #mod ntils.temp /= #2 ntils.const
execute store result score #rand ntils.temp run random value 75..150
scoreboard players operation #mod ntils.temp *= #rand ntils.temp
scoreboard players operation #mod ntils.temp *= #DISTANCE_SCALE# ntils.API
scoreboard players operation #mod ntils.temp /= #10000 ntils.const

scoreboard players operation @s ntils.p.x3 *= #mod ntils.temp
scoreboard players operation @s ntils.p.y3 *= #mod ntils.temp
scoreboard players operation @s ntils.p.z3 *= #mod ntils.temp

scoreboard players operation @s ntils.p.x3 /= #100 ntils.const
scoreboard players operation @s ntils.p.y3 /= #100 ntils.const
scoreboard players operation @s ntils.p.z3 /= #100 ntils.const

scoreboard players operation @s ntils.p.x3 += #x1 ntils.int
scoreboard players operation @s ntils.p.y3 += #y1 ntils.int
scoreboard players operation @s ntils.p.z3 += #z1 ntils.int