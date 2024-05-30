scoreboard players add @s utils.p.loop 1
scoreboard players add #loop utils.temp 1

scoreboard players operation #mod utils.temp = @s utils.p.loop_max
scoreboard players operation #mod utils.temp -= @s utils.p.loop

scoreboard players operation #x1_mod utils.temp = @s utils.p.x1_mod
scoreboard players operation #y1_mod utils.temp = @s utils.p.y1_mod
scoreboard players operation #z1_mod utils.temp = @s utils.p.z1_mod

scoreboard players operation #x2_mod utils.temp = @s utils.p.x2_mod
scoreboard players operation #y2_mod utils.temp = @s utils.p.y2_mod
scoreboard players operation #z2_mod utils.temp = @s utils.p.z2_mod

scoreboard players operation #x1_mod utils.temp *= #mod utils.temp
scoreboard players operation #y1_mod utils.temp *= #mod utils.temp
scoreboard players operation #z1_mod utils.temp *= #mod utils.temp

execute store result score #x1_og utils.temp run scoreboard players operation #x1_mod utils.temp /= @s utils.p.loop_max
execute store result score #y1_og utils.temp run scoreboard players operation #y1_mod utils.temp /= @s utils.p.loop_max
execute store result score #z1_og utils.temp run scoreboard players operation #z1_mod utils.temp /= @s utils.p.loop_max

scoreboard players operation #x2_mod utils.temp *= @s utils.p.loop
scoreboard players operation #y2_mod utils.temp *= @s utils.p.loop
scoreboard players operation #z2_mod utils.temp *= @s utils.p.loop

scoreboard players operation #x2_mod utils.temp /= @s utils.p.loop_max
scoreboard players operation #y2_mod utils.temp /= @s utils.p.loop_max
scoreboard players operation #z2_mod utils.temp /= @s utils.p.loop_max

scoreboard players operation #x2_mod utils.temp -= #x1_mod utils.temp
scoreboard players operation #y2_mod utils.temp -= #y1_mod utils.temp
scoreboard players operation #z2_mod utils.temp -= #z1_mod utils.temp

scoreboard players operation #x2_mod utils.temp *= @s utils.p.loop
scoreboard players operation #y2_mod utils.temp *= @s utils.p.loop
scoreboard players operation #z2_mod utils.temp *= @s utils.p.loop

scoreboard players operation #x2_mod utils.temp /= @s utils.p.loop_max
scoreboard players operation #y2_mod utils.temp /= @s utils.p.loop_max
scoreboard players operation #z2_mod utils.temp /= @s utils.p.loop_max

scoreboard players operation #x1_og utils.temp += #x2_mod utils.temp
scoreboard players operation #y1_og utils.temp += #y2_mod utils.temp
scoreboard players operation #z1_og utils.temp += #z2_mod utils.temp

scoreboard players operation #x1_og utils.temp += @s utils.p.x3
scoreboard players operation #y1_og utils.temp += @s utils.p.y3
scoreboard players operation #z1_og utils.temp += @s utils.p.z3

execute store result score #rand utils.temp run random value -75..75
execute store result storage utils:z tempPos[0] double 0.01 run scoreboard players operation #x1_og utils.temp += #rand utils.temp

execute store result score #rand utils.temp run random value -75..75
execute store result storage utils:z tempPos[1] double 0.01 run scoreboard players operation #y1_og utils.temp += #rand utils.temp

execute store result score #rand utils.temp run random value -75..75
execute store result storage utils:z tempPos[2] double 0.01 run scoreboard players operation #z1_og utils.temp += #rand utils.temp

data modify entity @s Pos set from storage utils:z tempPos

$execute facing entity @s feet unless score #delay utils.temp > @s utils.p.loop run $(command)

$execute if score @s utils.p.loop >= @s utils.p.loop_sentinel at @s run return run function utils:z/part/lightning/beizer/end {command:"$(command)"}

$execute if score @s utils.p.loop < @s utils.p.loop_sentinel unless score #loop utils.temp > @s utils.p.loop_step at @s run function utils:z/part/lightning/beizer/loop {command:"$(command)"}