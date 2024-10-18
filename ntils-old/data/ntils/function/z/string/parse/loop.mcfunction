data modify storage ntils:api string.parse.out append string storage ntils:z string.parse.in 0 1
data modify storage ntils:api string.parse.out append string storage ntils:z string.parse.in 1 2
data modify storage ntils:api string.parse.out append string storage ntils:z string.parse.in 2 3
data modify storage ntils:api string.parse.out append string storage ntils:z string.parse.in 3 4
data modify storage ntils:api string.parse.out append string storage ntils:z string.parse.in 4 5
data modify storage ntils:api string.parse.out append string storage ntils:z string.parse.in 5 6
data modify storage ntils:api string.parse.out append string storage ntils:z string.parse.in 6 7
data modify storage ntils:api string.parse.out append string storage ntils:z string.parse.in 7 8

data modify storage ntils:z string.parse.in set string storage ntils:z string.parse.in 8

scoreboard players remove #loop ntils.z.temp 1
execute if score #loop ntils.z.temp matches 1.. run function ntils:z/string/parse/loop