data modify storage ntils:z part.lightning.bezier.pos_start set from entity @s Pos

execute store result score #part.lightning.bezier.d.x1 ntils.z.temp store result score #part.lightning.bezier.r.x1 ntils.z.temp store result score #math.bz.3.in.a.x ntils.API run data get storage ntils:z part.lightning.bezier.pos_start[0] 1000
execute store result score #part.lightning.bezier.d.y1 ntils.z.temp store result score #part.lightning.bezier.r.y1 ntils.z.temp store result score #math.bz.3.in.a.y ntils.API run data get storage ntils:z part.lightning.bezier.pos_start[1] 1000
execute store result score #part.lightning.bezier.d.z1 ntils.z.temp store result score #part.lightning.bezier.r.z1 ntils.z.temp store result score #math.bz.3.in.a.z ntils.API run data get storage ntils:z part.lightning.bezier.pos_start[2] 1000

teleport @s ~ ~ ~

data modify storage ntils:z part.lightning.bezier.pos_end set from entity @s Pos
data modify storage ntils:z macro.end_pos set from storage ntils:z part.lightning.bezier.pos_end
data modify entity @s data.ntils.z.particle.lightning set from storage ntils:z macro

execute store result score #part.lightning.bezier.d.x2 ntils.z.temp store result score #part.lightning.bezier.r.x2 ntils.z.temp store result score #math.bz.3.in.c.x ntils.API run data get storage ntils:z part.lightning.bezier.pos_end[0] 1000
execute store result score #part.lightning.bezier.d.y2 ntils.z.temp store result score #part.lightning.bezier.r.y2 ntils.z.temp store result score #math.bz.3.in.c.y ntils.API run data get storage ntils:z part.lightning.bezier.pos_end[1] 1000
execute store result score #part.lightning.bezier.d.z2 ntils.z.temp store result score #part.lightning.bezier.r.z2 ntils.z.temp store result score #math.bz.3.in.c.z ntils.API run data get storage ntils:z part.lightning.bezier.pos_end[2] 1000

data modify storage ntils:api math.distance.in set value {X:1.0f,Y:1.0f,Z:1.0f}

execute store result storage ntils:api math.distance.in.X float 1 run scoreboard players operation #part.lightning.bezier.d.x1 ntils.z.temp -= #part.lightning.bezier.d.x2 ntils.z.temp
execute store result storage ntils:api math.distance.in.Y float 1 run scoreboard players operation #part.lightning.bezier.d.y1 ntils.z.temp -= #part.lightning.bezier.d.y2 ntils.z.temp
execute store result storage ntils:api math.distance.in.Z float 1 run scoreboard players operation #part.lightning.bezier.d.z1 ntils.z.temp -= #part.lightning.bezier.d.z2 ntils.z.temp

function ntils:api/math/distance

execute store result score @s ntils.z.p.loop_sentinel store result score @s ntils.z.p.loop_step store result score #math.bz.3.in.iterations ntils.API run data get storage ntils:api math.distance.out 0.001
scoreboard players remove @s ntils.z.p.loop_sentinel 1
execute if score #steps ntils.z.temp matches ..1 run scoreboard players set #steps ntils.z.temp 1
scoreboard players operation @s ntils.z.p.loop_step /= #steps ntils.z.temp
scoreboard players set @s ntils.z.p.loop 0
scoreboard players set #loop ntils.z.temp 0

execute if score #DIRECTION_MODE# ntils.API matches 1 run function ntils:z/part/lightning/bezier/direction
execute unless score #DIRECTION_MODE# ntils.API matches 1 run function ntils:z/part/lightning/bezier/random

data modify entity @s Pos set from storage ntils:z part.lightning.bezier.pos_start

function ntils:api/math/bz/3/i/s/start

$execute if score @s ntils.z.p.loop_sentinel matches 1.. at @s run function ntils:z/part/lightning/bezier/loop {command:"$(command)"}