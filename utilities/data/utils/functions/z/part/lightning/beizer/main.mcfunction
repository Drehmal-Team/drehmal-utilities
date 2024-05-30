data modify storage utils:z tempPos set from entity @s Pos

execute store result score #x2 utils.temp store result score #x1 utils.int run data get storage utils:z tempPos[0] 100
execute store result score #y2 utils.temp store result score #y1 utils.int run data get storage utils:z tempPos[1] 100
execute store result score #z2 utils.temp store result score #z1 utils.int run data get storage utils:z tempPos[2] 100

teleport @s ~ ~ ~

data modify storage utils:z tempPosEnd set from entity @s Pos
data modify storage utils:z macro.end_pos set from storage utils:z tempPosEnd
data modify entity @s data.utils.z.particle.lightning set from storage utils:z macro

execute store result score #x utils.temp store result score #x2 utils.int run data get storage utils:z tempPosEnd[0] 100
execute store result score #y utils.temp store result score #y2 utils.int run data get storage utils:z tempPosEnd[1] 100
execute store result score #z utils.temp store result score #z2 utils.int run data get storage utils:z tempPosEnd[2] 100

data modify storage utils:z distance set value {input:{x:1.0d,y:1.0d,z:1.0d}}

execute store result storage utils:z distance.input.x double 0.01 run scoreboard players operation #x utils.temp -= #x2 utils.temp
execute store result storage utils:z distance.input.y double 0.01 run scoreboard players operation #y utils.temp -= #y2 utils.temp
execute store result storage utils:z distance.input.z double 0.01 run scoreboard players operation #z utils.temp -= #z2 utils.temp

execute summon item_display run function utils:api/math/distance with storage utils:z distance.input

execute store result score #sqrt_out utils.temp run data get storage utils:api distance.output 100

execute if score #DIRECTION_MODE# utils.API matches 1 run function utils:z/part/lightning/beizer/direction
execute unless score #DIRECTION_MODE# utils.API matches 1 run function utils:z/part/lightning/beizer/random

execute store result score @s utils.p.loop_sentinel store result score @s utils.p.loop_max run scoreboard players operation #sqrt_out utils.temp /= #100 utils.const
execute store result score @s utils.p.loop_step run scoreboard players remove @s utils.p.loop_sentinel 1

data modify entity @s Pos set from storage utils:z tempPos

scoreboard players operation @s utils.p.x1_mod = #x1 utils.int
scoreboard players operation @s utils.p.y1_mod = #y1 utils.int
scoreboard players operation @s utils.p.z1_mod = #z1 utils.int

scoreboard players operation @s utils.p.x2_mod = #x2 utils.int
scoreboard players operation @s utils.p.y2_mod = #y2 utils.int
scoreboard players operation @s utils.p.z2_mod = #z2 utils.int

scoreboard players operation @s utils.p.x1_mod -= @s utils.p.x3
scoreboard players operation @s utils.p.y1_mod -= @s utils.p.y3
scoreboard players operation @s utils.p.z1_mod -= @s utils.p.z3

scoreboard players operation @s utils.p.x2_mod -= @s utils.p.x3
scoreboard players operation @s utils.p.y2_mod -= @s utils.p.y3
scoreboard players operation @s utils.p.z2_mod -= @s utils.p.z3

scoreboard players set @s utils.p.loop 0

execute if score @s utils.p.loop_sentinel matches 600.. store result score @s utils.p.loop_step run scoreboard players set @s utils.p.loop_sentinel 600

scoreboard players operation @s utils.p.loop_step /= #steps utils.temp
scoreboard players set #loop utils.temp 0

$execute if score @s utils.p.loop_sentinel matches 1.. at @s run function utils:z/part/lightning/beizer/loop {command:"$(command)"}