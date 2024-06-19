data modify storage ntils:z tempPos set from entity @s Pos

execute store result score #x2 ntils.temp store result score #x1 ntils.int run data get storage ntils:z tempPos[0] 100
execute store result score #y2 ntils.temp store result score #y1 ntils.int run data get storage ntils:z tempPos[1] 100
execute store result score #z2 ntils.temp store result score #z1 ntils.int run data get storage ntils:z tempPos[2] 100

teleport @s ~ ~ ~

data modify storage ntils:z tempPosEnd set from entity @s Pos
data modify storage ntils:z macro.end_pos set from storage ntils:z tempPosEnd
data modify entity @s data.ntils.z.particle.lightning set from storage ntils:z macro

execute store result score #x ntils.temp store result score #x2 ntils.int run data get storage ntils:z tempPosEnd[0] 100
execute store result score #y ntils.temp store result score #y2 ntils.int run data get storage ntils:z tempPosEnd[1] 100
execute store result score #z ntils.temp store result score #z2 ntils.int run data get storage ntils:z tempPosEnd[2] 100

data modify storage ntils:z distance set value {input:{x:1.0d,y:1.0d,z:1.0d}}

execute store result storage ntils:z distance.input.x double 0.01 run scoreboard players operation #x ntils.temp -= #x2 ntils.temp
execute store result storage ntils:z distance.input.y double 0.01 run scoreboard players operation #y ntils.temp -= #y2 ntils.temp
execute store result storage ntils:z distance.input.z double 0.01 run scoreboard players operation #z ntils.temp -= #z2 ntils.temp

execute summon item_display run function ntils:api/math/distance with storage ntils:z distance.input

execute store result score #sqrt_out ntils.temp run data get storage ntils:api distance.output 100

execute if score #DIRECTION_MODE# ntils.API matches 1 run function ntils:z/part/lightning/beizer/direction
execute unless score #DIRECTION_MODE# ntils.API matches 1 run function ntils:z/part/lightning/beizer/random

execute store result score @s ntils.p.loop_sentinel store result score @s ntils.p.loop_max run scoreboard players operation #sqrt_out ntils.temp /= #100 ntils.const
execute store result score @s ntils.p.loop_step run scoreboard players remove @s ntils.p.loop_sentinel 1

data modify entity @s Pos set from storage ntils:z tempPos

scoreboard players operation @s ntils.p.x1_mod = #x1 ntils.int
scoreboard players operation @s ntils.p.y1_mod = #y1 ntils.int
scoreboard players operation @s ntils.p.z1_mod = #z1 ntils.int

scoreboard players operation @s ntils.p.x2_mod = #x2 ntils.int
scoreboard players operation @s ntils.p.y2_mod = #y2 ntils.int
scoreboard players operation @s ntils.p.z2_mod = #z2 ntils.int

scoreboard players operation @s ntils.p.x1_mod -= @s ntils.p.x3
scoreboard players operation @s ntils.p.y1_mod -= @s ntils.p.y3
scoreboard players operation @s ntils.p.z1_mod -= @s ntils.p.z3

scoreboard players operation @s ntils.p.x2_mod -= @s ntils.p.x3
scoreboard players operation @s ntils.p.y2_mod -= @s ntils.p.y3
scoreboard players operation @s ntils.p.z2_mod -= @s ntils.p.z3

scoreboard players set @s ntils.p.loop 0

execute if score @s ntils.p.loop_sentinel matches 600.. store result score @s ntils.p.loop_step run scoreboard players set @s ntils.p.loop_sentinel 600

scoreboard players operation @s ntils.p.loop_step /= #steps ntils.temp
scoreboard players set #loop ntils.temp 0

$execute if score @s ntils.p.loop_sentinel matches 1.. at @s run function ntils:z/part/lightning/beizer/loop {command:"$(command)"}