execute positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
data modify storage n_plib:storage tempMid set from entity @s Pos

execute unless score #particle_light.scale n_plib.API matches 1.. run scoreboard players set #particle_light.scale n_plib.API 100

execute store result score @s n_plib.x3 run data get storage n_plib:storage tempMid[0] 100
execute store result score @s n_plib.y3 run data get storage n_plib:storage tempMid[1] 100
execute store result score @s n_plib.z3 run data get storage n_plib:storage tempMid[2] 100

scoreboard players operation #mod n_plib.temp = #sqrt_out n_plib.temp
scoreboard players operation #mod n_plib.temp /= #2 n_plib.const
execute store result score #rand n_plib.temp run random value 75..150
scoreboard players operation #mod n_plib.temp *= #rand n_plib.temp
scoreboard players operation #mod n_plib.temp *= #particle_light.scale n_plib.API
scoreboard players operation #mod n_plib.temp /= #10000 n_plib.const

scoreboard players operation @s n_plib.x3 *= #mod n_plib.temp
scoreboard players operation @s n_plib.y3 *= #mod n_plib.temp
scoreboard players operation @s n_plib.z3 *= #mod n_plib.temp

scoreboard players operation @s n_plib.x3 /= #100 n_plib.const
scoreboard players operation @s n_plib.y3 /= #100 n_plib.const
scoreboard players operation @s n_plib.z3 /= #100 n_plib.const

scoreboard players operation @s n_plib.x3 += #x1 n_plib.int
scoreboard players operation @s n_plib.y3 += #y1 n_plib.int
scoreboard players operation @s n_plib.z3 += #z1 n_plib.int