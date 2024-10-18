scoreboard players add @s ntils.z.p.loop 1
scoreboard players add #loop ntils.z.temp 1

function ntils:api/math/bz/3/i/s/loop

execute store result score #rand ntils.z.temp run random value -750..750
execute store result storage ntils:z tempPos[0] double 0.001 run scoreboard players operation #math.bz.3.out.x ntils.API += #rand ntils.z.temp

execute store result score #rand ntils.z.temp run random value -750..750
execute store result storage ntils:z tempPos[1] double 0.001 run scoreboard players operation #math.bz.3.out.y ntils.API += #rand ntils.z.temp

execute store result score #rand ntils.z.temp run random value -750..750
execute store result storage ntils:z tempPos[2] double 0.001 run scoreboard players operation #math.bz.3.out.z ntils.API += #rand ntils.z.temp

data modify entity @s Pos set from storage ntils:z tempPos

$execute facing entity @s feet unless score #delay ntils.z.temp > @s ntils.z.p.loop run $(command)

$execute if score @s ntils.z.p.loop >= @s ntils.z.p.loop_sentinel at @s run return run function ntils:z/part/lightning/bezier/end {command:"$(command)"}

$execute if score @s ntils.z.p.loop < @s ntils.z.p.loop_sentinel unless score #loop ntils.z.temp > @s ntils.z.p.loop_step at @s run function ntils:z/part/lightning/bezier/loop {command:"$(command)"}