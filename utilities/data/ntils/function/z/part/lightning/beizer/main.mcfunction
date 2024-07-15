data modify storage ntils:z tempPos set from entity @s Pos

execute store result score #x2 ntils.z.temp store result score #x1 ntils.z.int run data get storage ntils:z tempPos[0] 100
execute store result score #y2 ntils.z.temp store result score #y1 ntils.z.int run data get storage ntils:z tempPos[1] 100
execute store result score #z2 ntils.z.temp store result score #z1 ntils.z.int run data get storage ntils:z tempPos[2] 100

teleport @s ~ ~ ~

data modify storage ntils:z tempPosEnd set from entity @s Pos
data modify storage ntils:z macro.end_pos set from storage ntils:z tempPosEnd
data modify entity @s data.ntils.z.particle.lightning set from storage ntils:z macro

execute store result score #x ntils.z.temp store result score #x2 ntils.z.int run data get storage ntils:z tempPosEnd[0] 100
execute store result score #y ntils.z.temp store result score #y2 ntils.z.int run data get storage ntils:z tempPosEnd[1] 100
execute store result score #z ntils.z.temp store result score #z2 ntils.z.int run data get storage ntils:z tempPosEnd[2] 100

data modify storage ntils:z math.distance.in set value {X:1.0d,Y:1.0d,Z:1.0d}

execute store result storage ntils:z math.distance.in.X double 0.01 run scoreboard players operation #x ntils.z.temp -= #x2 ntils.z.temp
execute store result storage ntils:z math.distance.in.Y double 0.01 run scoreboard players operation #y ntils.z.temp -= #y2 ntils.z.temp
execute store result storage ntils:z math.distance.in.Z double 0.01 run scoreboard players operation #z ntils.z.temp -= #z2 ntils.z.temp

function ntils:api/math/distance with storage ntils:z math.distance.in

execute store result score #sqrt_out ntils.z.temp run data get storage ntils:api math.distance.out 100

execute if score #DIRECTION_MODE# ntils.API matches 1 run function ntils:z/part/lightning/beizer/direction
execute unless score #DIRECTION_MODE# ntils.API matches 1 run function ntils:z/part/lightning/beizer/random

execute store result score @s ntils.z.p.loop_sentinel store result score @s ntils.z.p.loop_max run scoreboard players operation #sqrt_out ntils.z.temp /= #100 ntils.z.const
execute store result score @s ntils.z.p.loop_step run scoreboard players remove @s ntils.z.p.loop_sentinel 1

data modify entity @s Pos set from storage ntils:z tempPos

scoreboard players operation @s ntils.z.p.x1_mod = #x1 ntils.z.int
scoreboard players operation @s ntils.z.p.y1_mod = #y1 ntils.z.int
scoreboard players operation @s ntils.z.p.z1_mod = #z1 ntils.z.int

scoreboard players operation @s ntils.z.p.x2_mod = #x2 ntils.z.int
scoreboard players operation @s ntils.z.p.y2_mod = #y2 ntils.z.int
scoreboard players operation @s ntils.z.p.z2_mod = #z2 ntils.z.int

scoreboard players operation @s ntils.z.p.x1_mod -= @s ntils.z.p.x3
scoreboard players operation @s ntils.z.p.y1_mod -= @s ntils.z.p.y3
scoreboard players operation @s ntils.z.p.z1_mod -= @s ntils.z.p.z3

scoreboard players operation @s ntils.z.p.x2_mod -= @s ntils.z.p.x3
scoreboard players operation @s ntils.z.p.y2_mod -= @s ntils.z.p.y3
scoreboard players operation @s ntils.z.p.z2_mod -= @s ntils.z.p.z3

scoreboard players set @s ntils.z.p.loop 0

execute if score @s ntils.z.p.loop_sentinel matches 600.. store result score @s ntils.z.p.loop_step run scoreboard players set @s ntils.z.p.loop_sentinel 600

scoreboard players operation @s ntils.z.p.loop_step /= #steps ntils.z.temp
scoreboard players set #loop ntils.z.temp 0

$execute if score @s ntils.z.p.loop_sentinel matches 1.. at @s run function ntils:z/part/lightning/beizer/loop {command:"$(command)"}