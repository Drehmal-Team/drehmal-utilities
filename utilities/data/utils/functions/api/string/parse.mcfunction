# STRING/PARSE
#
# Modify the data of utils.api parse.in with the string you want to parse
# The resulting array of characters will be located at utils.api parse.out

execute store result score #loop utils.temp run data get storage utils:api parse.in
scoreboard players operation #loop utils.temp /= #8 utils.const

data modify storage utils:api parse.out set value []
data modify storage utils:api parse.out append string storage utils:api parse.in 0 1
data modify storage utils:api parse.out append string storage utils:api parse.in 1 2
data modify storage utils:api parse.out append string storage utils:api parse.in 2 3
data modify storage utils:api parse.out append string storage utils:api parse.in 3 4
data modify storage utils:api parse.out append string storage utils:api parse.in 4 5
data modify storage utils:api parse.out append string storage utils:api parse.in 5 6
data modify storage utils:api parse.out append string storage utils:api parse.in 6 7
data modify storage utils:api parse.out append string storage utils:api parse.in 7 8

data modify storage utils:api parse.in set string storage utils:api parse.in 8

execute if score #loop utils.temp matches 1.. run function utils:z/string/parse/loop