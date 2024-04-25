# B64/DECODE
#
# Takes a base 64 encoded input array at "utils:api b64.in" and outputs the decoded output at "utils:api b64.out."
#
# IN: char array
#
# OUT: char array

execute store result score #loop utils.temp if data storage utils:api b64.in[]

scoreboard players operation #loop utils.temp /= #3 utils.const

data modify storage utils:z b64.from set value {0:'default',1:'default',2:'default'}

data modify storage utils:z b64.from[0] set from storage utils:api b64.in[0]
data modify storage utils:z b64.from[1] set from storage utils:api b64.in[1]
data modify storage utils:z b64.from[2] set from storage utils:api b64.in[2]

data remove storage utils:api b64.in[0]
data remove storage utils:api b64.in[0]
data remove storage utils:api b64.in[0]

data modify storage utils:z b64.to set value {0:0,1:0,2:0,3:0}

function utils:z/b64/e/iterate with storage utils:z b64.from