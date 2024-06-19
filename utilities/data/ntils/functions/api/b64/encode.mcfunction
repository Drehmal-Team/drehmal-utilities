# B64/DECODE
#
# Takes a base 64 encoded input array at "ntils:api b64.in" and outputs the decoded output at "ntils:api b64.out."
#
# IN: char array
#
# OUT: char array

return fail

execute store result score #loop ntils.temp if data storage ntils:api b64.in[]

scoreboard players operation #loop ntils.temp /= #3 ntils.const

data modify storage ntils:z b64.from set value {0:'default',1:'default',2:'default'}

data modify storage ntils:z b64.from[0] set from storage ntils:api b64.in[0]
data modify storage ntils:z b64.from[1] set from storage ntils:api b64.in[1]
data modify storage ntils:z b64.from[2] set from storage ntils:api b64.in[2]

data remove storage ntils:api b64.in[0]
data remove storage ntils:api b64.in[0]
data remove storage ntils:api b64.in[0]

data modify storage ntils:z b64.to set value {0:0,1:0,2:0,3:0}

function ntils:z/b64/e/iterate with storage ntils:z b64.from