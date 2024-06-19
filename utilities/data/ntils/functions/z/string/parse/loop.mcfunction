data modify storage ntils:api parse.out append string storage ntils:api parse.in 0 1
data modify storage ntils:api parse.out append string storage ntils:api parse.in 1 2
data modify storage ntils:api parse.out append string storage ntils:api parse.in 2 3
data modify storage ntils:api parse.out append string storage ntils:api parse.in 3 4
data modify storage ntils:api parse.out append string storage ntils:api parse.in 4 5
data modify storage ntils:api parse.out append string storage ntils:api parse.in 5 6
data modify storage ntils:api parse.out append string storage ntils:api parse.in 6 7
data modify storage ntils:api parse.out append string storage ntils:api parse.in 7 8

data modify storage ntils:api parse.in set string storage ntils:api parse.in 8

scoreboard players remove #loop ntils.temp 1
execute if score #loop ntils.temp matches 1.. run function ntils:z/string/parse/loop