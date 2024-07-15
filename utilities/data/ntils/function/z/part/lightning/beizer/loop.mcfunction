scoreboard players add @s ntils.z.p.loop 1
scoreboard players add #loop ntils.z.temp 1

scoreboard players operation #mod ntils.z.temp = @s ntils.z.p.loop_max
scoreboard players operation #mod ntils.z.temp -= @s ntils.z.p.loop

scoreboard players operation #x1_mod ntils.z.temp = @s ntils.z.p.x1_mod
scoreboard players operation #y1_mod ntils.z.temp = @s ntils.z.p.y1_mod
scoreboard players operation #z1_mod ntils.z.temp = @s ntils.z.p.z1_mod

scoreboard players operation #x2_mod ntils.z.temp = @s ntils.z.p.x2_mod
scoreboard players operation #y2_mod ntils.z.temp = @s ntils.z.p.y2_mod
scoreboard players operation #z2_mod ntils.z.temp = @s ntils.z.p.z2_mod

scoreboard players operation #x1_mod ntils.z.temp *= #mod ntils.z.temp
scoreboard players operation #y1_mod ntils.z.temp *= #mod ntils.z.temp
scoreboard players operation #z1_mod ntils.z.temp *= #mod ntils.z.temp

execute store result score #x1_og ntils.z.temp run scoreboard players operation #x1_mod ntils.z.temp /= @s ntils.z.p.loop_max
execute store result score #y1_og ntils.z.temp run scoreboard players operation #y1_mod ntils.z.temp /= @s ntils.z.p.loop_max
execute store result score #z1_og ntils.z.temp run scoreboard players operation #z1_mod ntils.z.temp /= @s ntils.z.p.loop_max

scoreboard players operation #x2_mod ntils.z.temp *= @s ntils.z.p.loop
scoreboard players operation #y2_mod ntils.z.temp *= @s ntils.z.p.loop
scoreboard players operation #z2_mod ntils.z.temp *= @s ntils.z.p.loop

scoreboard players operation #x2_mod ntils.z.temp /= @s ntils.z.p.loop_max
scoreboard players operation #y2_mod ntils.z.temp /= @s ntils.z.p.loop_max
scoreboard players operation #z2_mod ntils.z.temp /= @s ntils.z.p.loop_max

scoreboard players operation #x2_mod ntils.z.temp -= #x1_mod ntils.z.temp
scoreboard players operation #y2_mod ntils.z.temp -= #y1_mod ntils.z.temp
scoreboard players operation #z2_mod ntils.z.temp -= #z1_mod ntils.z.temp

scoreboard players operation #x2_mod ntils.z.temp *= @s ntils.z.p.loop
scoreboard players operation #y2_mod ntils.z.temp *= @s ntils.z.p.loop
scoreboard players operation #z2_mod ntils.z.temp *= @s ntils.z.p.loop

scoreboard players operation #x2_mod ntils.z.temp /= @s ntils.z.p.loop_max
scoreboard players operation #y2_mod ntils.z.temp /= @s ntils.z.p.loop_max
scoreboard players operation #z2_mod ntils.z.temp /= @s ntils.z.p.loop_max

scoreboard players operation #x1_og ntils.z.temp += #x2_mod ntils.z.temp
scoreboard players operation #y1_og ntils.z.temp += #y2_mod ntils.z.temp
scoreboard players operation #z1_og ntils.z.temp += #z2_mod ntils.z.temp

scoreboard players operation #x1_og ntils.z.temp += @s ntils.z.p.x3
scoreboard players operation #y1_og ntils.z.temp += @s ntils.z.p.y3
scoreboard players operation #z1_og ntils.z.temp += @s ntils.z.p.z3

execute store result score #rand ntils.z.temp run random value -75..75
execute store result storage ntils:z tempPos[0] double 0.01 run scoreboard players operation #x1_og ntils.z.temp += #rand ntils.z.temp

execute store result score #rand ntils.z.temp run random value -75..75
execute store result storage ntils:z tempPos[1] double 0.01 run scoreboard players operation #y1_og ntils.z.temp += #rand ntils.z.temp

execute store result score #rand ntils.z.temp run random value -75..75
execute store result storage ntils:z tempPos[2] double 0.01 run scoreboard players operation #z1_og ntils.z.temp += #rand ntils.z.temp

data modify entity @s Pos set from storage ntils:z tempPos

$execute facing entity @s feet unless score #delay ntils.z.temp > @s ntils.z.p.loop run $(command)

$execute if score @s ntils.z.p.loop >= @s ntils.z.p.loop_sentinel at @s run return run function ntils:z/part/lightning/beizer/end {command:"$(command)"}

$execute if score @s ntils.z.p.loop < @s ntils.z.p.loop_sentinel unless score #loop ntils.z.temp > @s ntils.z.p.loop_step at @s run function ntils:z/part/lightning/beizer/loop {command:"$(command)"}