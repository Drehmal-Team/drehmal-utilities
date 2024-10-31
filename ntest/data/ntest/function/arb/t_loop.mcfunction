data modify entity @s Pos set from storage ntest:s arb.temp[0]
data remove storage ntest:s arb.temp[0]
execute at @s run particle end_rod
execute if data storage ntest:s arb.temp[] at @s run function ntest:arb/t_loop
