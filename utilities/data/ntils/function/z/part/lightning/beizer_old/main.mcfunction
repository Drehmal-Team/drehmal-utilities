data modify storage ntils:z part.lightning.beizer.pos_start set from entity @s Pos

execute store result score #part.lightning.beizer.d.x1 ntils.z.temp store result score #part.lightning.beizer.r.x1 ntils.z.temp store result score #math.bz.i.in.a.x ntils.API run data get storage ntils:z part.lightning.beizer.pos_start[0] 1000
execute store result score #part.lightning.beizer.d.y1 ntils.z.temp store result score #part.lightning.beizer.r.y1 ntils.z.temp store result score #math.bz.i.in.a.y ntils.API run data get storage ntils:z part.lightning.beizer.pos_start[1] 1000
execute store result score #part.lightning.beizer.d.z1 ntils.z.temp store result score #part.lightning.beizer.r.z1 ntils.z.temp store result score #math.bz.i.in.a.z ntils.API run data get storage ntils:z part.lightning.beizer.pos_start[2] 1000

teleport @s ~ ~ ~

data modify storage ntils:z part.lightning.beizer.pos_end set from entity @s Pos
data modify storage ntils:z macro.end_pos set from storage ntils:z part.lightning.beizer.pos_end
data modify entity @s data.ntils.z.particle.lightning set from storage ntils:z macro

execute store result score #part.lightning.beizer.d.x2 ntils.z.temp store result score #part.lightning.beizer.r.x2 ntils.z.temp store result score #math.bz.i.in.c.x ntils.API run data get storage ntils:z part.lightning.beizer.pos_end[0] 1000
execute store result score #part.lightning.beizer.d.y2 ntils.z.temp store result score #part.lightning.beizer.r.y2 ntils.z.temp store result score #math.bz.i.in.c.y ntils.API run data get storage ntils:z part.lightning.beizer.pos_end[1] 1000
execute store result score #part.lightning.beizer.d.z2 ntils.z.temp store result score #part.lightning.beizer.r.z2 ntils.z.temp store result score #math.bz.i.in.c.z ntils.API run data get storage ntils:z part.lightning.beizer.pos_end[2] 1000

data modify storage ntils:api math.distance.in set value {X:1.0d,Y:1.0d,Z:1.0d}

execute store result storage ntils:api math.distance.in.X float 1 run scoreboard players operation #part.lightning.beizer.d.x1 ntils.z.temp -= #part.lightning.beizer.d.x2 ntils.z.temp
execute store result storage ntils:api math.distance.in.Y float 1 run scoreboard players operation #part.lightning.beizer.d.y1 ntils.z.temp -= #part.lightning.beizer.d.y2 ntils.z.temp
execute store result storage ntils:api math.distance.in.Z float 1 run scoreboard players operation #part.lightning.beizer.d.z1 ntils.z.temp -= #part.lightning.beizer.d.z2 ntils.z.temp

function ntils:api/math/distance

execute store result score @s ntils.z.p.loop_sentinel store result score @s ntils.z.p.loop_step store result score #math.bz.i.in.iterations ntils.API run data get storage ntils:api math.distance.out 0.001
scoreboard players remove @s ntils.z.p.loop_sentinel 1
execute if score #steps ntils.z.temp matches ..1 run scoreboard players set #steps ntils.z.temp 1
scoreboard players operation @s ntils.z.p.loop_step /= #steps ntils.z.temp
scoreboard players set @s ntils.z.p.loop 0
scoreboard players set #loop ntils.z.temp 0

execute if score #DIRECTION_MODE# ntils.API matches 1 run function ntils:z/part/lightning/beizer/direction
execute unless score #DIRECTION_MODE# ntils.API matches 1 run function ntils:z/part/lightning/beizer/random

data modify entity @s Pos set from storage ntils:z part.lightning.beizer.pos_start

function ntils:api/math/bz/i/s/start

$execute if score @s ntils.z.p.loop_sentinel matches 1.. at @s run function ntils:z/part/lightning/beizer/loop {command:"$(command)"}