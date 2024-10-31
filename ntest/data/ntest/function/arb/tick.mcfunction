data modify storage ntest:s arb.temp set from storage ntest:s arb.list
execute if data storage ntest:s arb.temp[] run function ntest:arb/t_loop
teleport @s ~ ~ ~