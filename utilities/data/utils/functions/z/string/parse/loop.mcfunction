data modify storage utils:api parse.out append string storage utils:api parse.in 0 1
data modify storage utils:api parse.out append string storage utils:api parse.in 1 2
data modify storage utils:api parse.out append string storage utils:api parse.in 2 3
data modify storage utils:api parse.out append string storage utils:api parse.in 3 4
data modify storage utils:api parse.out append string storage utils:api parse.in 4 5
data modify storage utils:api parse.out append string storage utils:api parse.in 5 6
data modify storage utils:api parse.out append string storage utils:api parse.in 6 7
data modify storage utils:api parse.out append string storage utils:api parse.in 7 8

data modify storage utils:api parse.in set string storage utils:api parse.in 8

scoreboard players remove #loop utils.temp 1
execute if score #loop utils.temp matches 1.. run function utils:z/string/parse/loop