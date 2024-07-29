# STRING/PARSE
#
# Modify the data of ntils:api string.parse.in with the string you want to string.parse
# The resulting array of characters will be located at ntils:api string.parse.out
#
# PERFORMANCE: Excellent
#   Saves on function executions by bulk parsing. Very fast

execute store result score #loop ntils.z.temp run data get storage ntils:api string.parse.in
scoreboard players operation #loop ntils.z.temp /= #8 ntils.z.const

data modify storage ntils:api string.parse.out set value []
data modify storage ntils:z string.parse.in set from storage ntils:api string.parse.in
data modify storage ntils:api string.parse.out append string storage ntils:z string.parse.in 0 1
data modify storage ntils:api string.parse.out append string storage ntils:z string.parse.in 1 2
data modify storage ntils:api string.parse.out append string storage ntils:z string.parse.in 2 3
data modify storage ntils:api string.parse.out append string storage ntils:z string.parse.in 3 4
data modify storage ntils:api string.parse.out append string storage ntils:z string.parse.in 4 5
data modify storage ntils:api string.parse.out append string storage ntils:z string.parse.in 5 6
data modify storage ntils:api string.parse.out append string storage ntils:z string.parse.in 6 7
data modify storage ntils:api string.parse.out append string storage ntils:z string.parse.in 7 8

data modify storage ntils:z string.parse.in set string storage ntils:z string.parse.in 8

execute if score #loop ntils.z.temp matches 1.. run function ntils:z/string/parse/loop