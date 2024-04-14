data modify storage n_plib:storage tempPos set from entity @s Pos

execute store result score #x2 n_plib.temp store result score #x1 n_plib.int run data get storage n_plib:storage tempPos[0] 100
execute store result score #y2 n_plib.temp store result score #y1 n_plib.int run data get storage n_plib:storage tempPos[1] 100
execute store result score #z2 n_plib.temp store result score #z1 n_plib.int run data get storage n_plib:storage tempPos[2] 100

teleport @s ~ ~ ~

data modify storage n_plib:storage tempPosEnd set from entity @s Pos

execute store result score #x n_plib.temp store result score #x2 n_plib.int run data get storage n_plib:storage tempPosEnd[0] 100
execute store result score #y n_plib.temp store result score #y2 n_plib.int run data get storage n_plib:storage tempPosEnd[1] 100
execute store result score #z n_plib.temp store result score #z2 n_plib.int run data get storage n_plib:storage tempPosEnd[2] 100

data modify storage n_plib:storage distance set value {input:{x:1.0d,y:1.0d,z:1.0d},output:0.0d}

execute store result storage n_plib:storage distance.input.x double 0.01 run scoreboard players operation #x n_plib.temp -= #x2 n_plib.temp
execute store result storage n_plib:storage distance.input.y double 0.01 run scoreboard players operation #y n_plib.temp -= #y2 n_plib.temp
execute store result storage n_plib:storage distance.input.z double 0.01 run scoreboard players operation #z n_plib.temp -= #z2 n_plib.temp

execute summon item_display run function n_plib:zprivate/math/sqrt with storage n_plib:storage distance.input

execute store result score #sqrt_out n_plib.temp run data get storage n_plib:storage distance.output 100

execute if score #particle_light.direction n_plib.API matches 1 run function n_plib:zprivate/lightning/beizer/direction
execute unless score #particle_light.direction n_plib.API matches 1 run function n_plib:zprivate/lightning/beizer/random

execute store result score @s n_plib.loop_sentinel store result score @s n_plib.loop_max run scoreboard players operation #sqrt_out n_plib.temp /= #100 n_plib.const
scoreboard players remove @s n_plib.loop_sentinel 1

data modify entity @s Pos set from storage n_plib:storage tempPos

scoreboard players operation @s n_plib.x1_mod = #x1 n_plib.int
scoreboard players operation @s n_plib.y1_mod = #y1 n_plib.int
scoreboard players operation @s n_plib.z1_mod = #z1 n_plib.int

scoreboard players operation @s n_plib.x2_mod = #x2 n_plib.int
scoreboard players operation @s n_plib.y2_mod = #y2 n_plib.int
scoreboard players operation @s n_plib.z2_mod = #z2 n_plib.int

scoreboard players operation @s n_plib.x1_mod -= @s n_plib.x3
scoreboard players operation @s n_plib.y1_mod -= @s n_plib.y3
scoreboard players operation @s n_plib.z1_mod -= @s n_plib.z3

scoreboard players operation @s n_plib.x2_mod -= @s n_plib.x3
scoreboard players operation @s n_plib.y2_mod -= @s n_plib.y3
scoreboard players operation @s n_plib.z2_mod -= @s n_plib.z3

scoreboard players set @s n_plib.loop 0

execute if score @s n_plib.loop_sentinel matches 600.. run scoreboard players set @s n_plib.loop_sentinel 600

$execute if score @s n_plib.loop_sentinel matches 1.. at @s run function n_plib:zprivate/lightning/beizer/loop {command:"$(command)"}

$execute facing entity @s feet unless entity @s[distance=5..] run function n_plib:zprivate/lightning/beizer/light_loop {command:"$(command)"}

kill @s