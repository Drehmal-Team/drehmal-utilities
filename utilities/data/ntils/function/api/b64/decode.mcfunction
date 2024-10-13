# B64/DECODE
#
# Takes a base 64 encoded input string at "ntils:api b64.decode.in" and outputs the decoded output at "ntils:api b64.decode.out"
#
# IN: string
#
# OUT: char array
#
# PERFORMANCE: Bad
#   Very optimized for its purpose but still not great. Only use this on the portion of base64 you actually need converted.

execute store result score #loop ntils.z.b64.temp store result score #len ntils.z.b64.temp run data get storage ntils:api b64.decode.in

scoreboard players operation #len ntils.z.b64.temp %= #4 ntils.z.const

execute unless score #len ntils.z.b64.temp matches 0 run return fail

data modify storage ntils:api b64.decode.out set value []
data modify storage ntils:z b64.decode.in set from storage ntils:api b64.decode.in

scoreboard players operation #loop ntils.z.b64.temp /= #4 ntils.z.const

data modify storage ntils:z b64.decode.from set value {0:'',1:'',2:'',3:''}

data modify storage ntils:z b64.decode.from.0 set string storage ntils:z b64.decode.in 0 1
data modify storage ntils:z b64.decode.from.1 set string storage ntils:z b64.decode.in 1 2
data modify storage ntils:z b64.decode.from.2 set string storage ntils:z b64.decode.in 2 3
data modify storage ntils:z b64.decode.from.3 set string storage ntils:z b64.decode.in 3 4
data modify storage ntils:z b64.decode.in set string storage ntils:z b64.decode.in 4

data modify storage ntils:z b64.decode.to set value {0:0,1:0,2:0}

function ntils:z/b64/decode/iterate with storage ntils:z b64.decode.from