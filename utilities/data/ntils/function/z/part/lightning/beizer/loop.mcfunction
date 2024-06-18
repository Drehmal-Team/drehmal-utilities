scoreboard players add @s ntils.p.loop 1
scoreboard players add #loop ntils.temp 1

scoreboard players operation #mod ntils.temp = @s ntils.p.loop_max
scoreboard players operation #mod ntils.temp -= @s ntils.p.loop

scoreboard players operation #x1_mod ntils.temp = @s ntils.p.x1_mod
scoreboard players operation #y1_mod ntils.temp = @s ntils.p.y1_mod
scoreboard players operation #z1_mod ntils.temp = @s ntils.p.z1_mod

scoreboard players operation #x2_mod ntils.temp = @s ntils.p.x2_mod
scoreboard players operation #y2_mod ntils.temp = @s ntils.p.y2_mod
scoreboard players operation #z2_mod ntils.temp = @s ntils.p.z2_mod

scoreboard players operation #x1_mod ntils.temp *= #mod ntils.temp
scoreboard players operation #y1_mod ntils.temp *= #mod ntils.temp
scoreboard players operation #z1_mod ntils.temp *= #mod ntils.temp

execute store result score #x1_og ntils.temp run scoreboard players operation #x1_mod ntils.temp /= @s ntils.p.loop_max
execute store result score #y1_og ntils.temp run scoreboard players operation #y1_mod ntils.temp /= @s ntils.p.loop_max
execute store result score #z1_og ntils.temp run scoreboard players operation #z1_mod ntils.temp /= @s ntils.p.loop_max

scoreboard players operation #x2_mod ntils.temp *= @s ntils.p.loop
scoreboard players operation #y2_mod ntils.temp *= @s ntils.p.loop
scoreboard players operation #z2_mod ntils.temp *= @s ntils.p.loop

scoreboard players operation #x2_mod ntils.temp /= @s ntils.p.loop_max
scoreboard players operation #y2_mod ntils.temp /= @s ntils.p.loop_max
scoreboard players operation #z2_mod ntils.temp /= @s ntils.p.loop_max

scoreboard players operation #x2_mod ntils.temp -= #x1_mod ntils.temp
scoreboard players operation #y2_mod ntils.temp -= #y1_mod ntils.temp
scoreboard players operation #z2_mod ntils.temp -= #z1_mod ntils.temp

scoreboard players operation #x2_mod ntils.temp *= @s ntils.p.loop
scoreboard players operation #y2_mod ntils.temp *= @s ntils.p.loop
scoreboard players operation #z2_mod ntils.temp *= @s ntils.p.loop

scoreboard players operation #x2_mod ntils.temp /= @s ntils.p.loop_max
scoreboard players operation #y2_mod ntils.temp /= @s ntils.p.loop_max
scoreboard players operation #z2_mod ntils.temp /= @s ntils.p.loop_max

scoreboard players operation #x1_og ntils.temp += #x2_mod ntils.temp
scoreboard players operation #y1_og ntils.temp += #y2_mod ntils.temp
scoreboard players operation #z1_og ntils.temp += #z2_mod ntils.temp

scoreboard players operation #x1_og ntils.temp += @s ntils.p.x3
scoreboard players operation #y1_og ntils.temp += @s ntils.p.y3
scoreboard players operation #z1_og ntils.temp += @s ntils.p.z3

execute store result score #rand ntils.temp run random value -75..75
execute store result storage ntils:z tempPos[0] double 0.01 run scoreboard players operation #x1_og ntils.temp += #rand ntils.temp

execute store result score #rand ntils.temp run random value -75..75
execute store result storage ntils:z tempPos[1] double 0.01 run scoreboard players operation #y1_og ntils.temp += #rand ntils.temp

execute store result score #rand ntils.temp run random value -75..75
execute store result storage ntils:z tempPos[2] double 0.01 run scoreboard players operation #z1_og ntils.temp += #rand ntils.temp

data modify entity @s Pos set from storage ntils:z tempPos

$execute facing entity @s feet unless score #delay ntils.temp > @s ntils.p.loop run $(command)

$execute if score @s ntils.p.loop >= @s ntils.p.loop_sentinel at @s run return run function ntils:z/part/lightning/beizer/end {command:"$(command)"}

$execute if score @s ntils.p.loop < @s ntils.p.loop_sentinel unless score #loop ntils.temp > @s ntils.p.loop_step at @s run function ntils:z/part/lightning/beizer/loop {command:"$(command)"}