execute positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
data modify storage ntils:z tempMid set from entity @s Pos

execute unless score #DISTANCE_SCALE# ntils.API matches 1.. run scoreboard players set #DISTANCE_SCALE# ntils.API 100

execute store result score @s ntils.z.p.x3 run data get storage ntils:z tempMid[0] 100
execute store result score @s ntils.z.p.y3 run data get storage ntils:z tempMid[1] 100
execute store result score @s ntils.z.p.z3 run data get storage ntils:z tempMid[2] 100

scoreboard players operation #mod ntils.z.temp = #sqrt_out ntils.z.temp
scoreboard players operation #mod ntils.z.temp /= #2 ntils.z.const
execute store result score #rand ntils.z.temp run random value 75..150
scoreboard players operation #mod ntils.z.temp *= #rand ntils.z.temp
scoreboard players operation #mod ntils.z.temp *= #DISTANCE_SCALE# ntils.API
scoreboard players operation #mod ntils.z.temp /= #10000 ntils.z.const

scoreboard players operation @s ntils.z.p.x3 *= #mod ntils.z.temp
scoreboard players operation @s ntils.z.p.y3 *= #mod ntils.z.temp
scoreboard players operation @s ntils.z.p.z3 *= #mod ntils.z.temp

scoreboard players operation @s ntils.z.p.x3 /= #100 ntils.z.const
scoreboard players operation @s ntils.z.p.y3 /= #100 ntils.z.const
scoreboard players operation @s ntils.z.p.z3 /= #100 ntils.z.const

scoreboard players operation @s ntils.z.p.x3 += #x1 ntils.z.int
scoreboard players operation @s ntils.z.p.y3 += #y1 ntils.z.int
scoreboard players operation @s ntils.z.p.z3 += #z1 ntils.z.int