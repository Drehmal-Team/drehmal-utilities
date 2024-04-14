scoreboard players add @s n_plib.loop 1
scoreboard players add #loop n_plib.temp 1

scoreboard players operation #mod n_plib.temp = @s n_plib.loop_max
scoreboard players operation #mod n_plib.temp -= @s n_plib.loop

scoreboard players operation #x1_mod n_plib.temp = @s n_plib.x1_mod
scoreboard players operation #y1_mod n_plib.temp = @s n_plib.y1_mod
scoreboard players operation #z1_mod n_plib.temp = @s n_plib.z1_mod

scoreboard players operation #x2_mod n_plib.temp = @s n_plib.x2_mod
scoreboard players operation #y2_mod n_plib.temp = @s n_plib.y2_mod
scoreboard players operation #z2_mod n_plib.temp = @s n_plib.z2_mod

scoreboard players operation #x1_mod n_plib.temp *= #mod n_plib.temp
scoreboard players operation #y1_mod n_plib.temp *= #mod n_plib.temp
scoreboard players operation #z1_mod n_plib.temp *= #mod n_plib.temp

execute store result score #x1_og n_plib.temp run scoreboard players operation #x1_mod n_plib.temp /= @s n_plib.loop_max
execute store result score #y1_og n_plib.temp run scoreboard players operation #y1_mod n_plib.temp /= @s n_plib.loop_max
execute store result score #z1_og n_plib.temp run scoreboard players operation #z1_mod n_plib.temp /= @s n_plib.loop_max

scoreboard players operation #x2_mod n_plib.temp *= @s n_plib.loop
scoreboard players operation #y2_mod n_plib.temp *= @s n_plib.loop
scoreboard players operation #z2_mod n_plib.temp *= @s n_plib.loop

scoreboard players operation #x2_mod n_plib.temp /= @s n_plib.loop_max
scoreboard players operation #y2_mod n_plib.temp /= @s n_plib.loop_max
scoreboard players operation #z2_mod n_plib.temp /= @s n_plib.loop_max

scoreboard players operation #x2_mod n_plib.temp -= #x1_mod n_plib.temp
scoreboard players operation #y2_mod n_plib.temp -= #y1_mod n_plib.temp
scoreboard players operation #z2_mod n_plib.temp -= #z1_mod n_plib.temp

scoreboard players operation #x2_mod n_plib.temp *= @s n_plib.loop
scoreboard players operation #y2_mod n_plib.temp *= @s n_plib.loop
scoreboard players operation #z2_mod n_plib.temp *= @s n_plib.loop

scoreboard players operation #x2_mod n_plib.temp /= @s n_plib.loop_max
scoreboard players operation #y2_mod n_plib.temp /= @s n_plib.loop_max
scoreboard players operation #z2_mod n_plib.temp /= @s n_plib.loop_max

scoreboard players operation #x1_og n_plib.temp += #x2_mod n_plib.temp
scoreboard players operation #y1_og n_plib.temp += #y2_mod n_plib.temp
scoreboard players operation #z1_og n_plib.temp += #z2_mod n_plib.temp

scoreboard players operation #x1_og n_plib.temp += @s n_plib.x3
scoreboard players operation #y1_og n_plib.temp += @s n_plib.y3
scoreboard players operation #z1_og n_plib.temp += @s n_plib.z3

execute store result score #rand n_plib.temp run random value -75..75
execute store result storage n_plib:storage tempPos[0] double 0.01 run scoreboard players operation #x1_og n_plib.temp += #rand n_plib.temp

execute store result score #rand n_plib.temp run random value -75..75
execute store result storage n_plib:storage tempPos[1] double 0.01 run scoreboard players operation #y1_og n_plib.temp += #rand n_plib.temp

execute store result score #rand n_plib.temp run random value -75..75
execute store result storage n_plib:storage tempPos[2] double 0.01 run scoreboard players operation #z1_og n_plib.temp += #rand n_plib.temp

data modify entity @s Pos set from storage n_plib:storage tempPos

$execute facing entity @s feet unless score #delay n_plib.temp > @s n_plib.loop run function n_plib:zprivate/lightning/beizer/light_loop {command:"$(command)"}

$execute if score @s n_plib.loop >= @s n_plib.loop_sentinel at @s run return run function n_plib:zprivate/lightning/beizer_d/end {command:"$(command)"}

$execute if score @s n_plib.loop < @s n_plib.loop_sentinel unless score #loop n_plib.temp > @s n_plib.loop_step at @s run function n_plib:zprivate/lightning/beizer_d/loop {command:"$(command)"}