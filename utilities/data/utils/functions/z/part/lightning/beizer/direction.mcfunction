execute positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
data modify storage utils:z tempMid set from entity @s Pos

execute unless score #DISTANCE_SCALE# utils.API matches 1.. run scoreboard players set #DISTANCE_SCALE# utils.API 100

execute store result score @s utils.p.x3 run data get storage utils:z tempMid[0] 100
execute store result score @s utils.p.y3 run data get storage utils:z tempMid[1] 100
execute store result score @s utils.p.z3 run data get storage utils:z tempMid[2] 100

scoreboard players operation #mod utils.temp = #sqrt_out utils.temp
scoreboard players operation #mod utils.temp /= #2 utils.const
execute store result score #rand utils.temp run random value 75..150
scoreboard players operation #mod utils.temp *= #rand utils.temp
scoreboard players operation #mod utils.temp *= #DISTANCE_SCALE# utils.API
scoreboard players operation #mod utils.temp /= #10000 utils.const

scoreboard players operation @s utils.p.x3 *= #mod utils.temp
scoreboard players operation @s utils.p.y3 *= #mod utils.temp
scoreboard players operation @s utils.p.z3 *= #mod utils.temp

scoreboard players operation @s utils.p.x3 /= #100 utils.const
scoreboard players operation @s utils.p.y3 /= #100 utils.const
scoreboard players operation @s utils.p.z3 /= #100 utils.const

scoreboard players operation @s utils.p.x3 += #x1 utils.int
scoreboard players operation @s utils.p.y3 += #y1 utils.int
scoreboard players operation @s utils.p.z3 += #z1 utils.int