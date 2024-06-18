# STRING/PARSE
#
# Modify the data of ntils.api parse.in with the string you want to parse
# The resulting array of characters will be located at ntils.api parse.out

execute store result score #loop ntils.temp run data get storage ntils:api parse.in
scoreboard players operation #loop ntils.temp /= #8 ntils.const

data modify storage ntils:api parse.out set value []
data modify storage ntils:api parse.out append string storage ntils:api parse.in 0 1
data modify storage ntils:api parse.out append string storage ntils:api parse.in 1 2
data modify storage ntils:api parse.out append string storage ntils:api parse.in 2 3
data modify storage ntils:api parse.out append string storage ntils:api parse.in 3 4
data modify storage ntils:api parse.out append string storage ntils:api parse.in 4 5
data modify storage ntils:api parse.out append string storage ntils:api parse.in 5 6
data modify storage ntils:api parse.out append string storage ntils:api parse.in 6 7
data modify storage ntils:api parse.out append string storage ntils:api parse.in 7 8

data modify storage ntils:api parse.in set string storage ntils:api parse.in 8

execute if score #loop ntils.temp matches 1.. run function ntils:z/string/parse/loop