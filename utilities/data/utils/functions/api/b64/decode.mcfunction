# B64/DECODE
#
# Takes a base 64 encoded input string at "utils:api b64.in" and outputs the decoded output at "utils:api b64.out"
#
# IN: string
#
# OUT: char array

execute store result score #loop utils.temp store result score #len utils.temp run data get storage utils:api b64.in

scoreboard players operation #len utils.temp %= #4 utils.const

execute unless score #len utils.temp matches 0 run return fail

data modify storage utils:api b64.out set value []

scoreboard players operation #loop utils.temp /= #4 utils.const

data modify storage utils:z b64.from set value {0:'',1:'',2:'',3:''}

data modify storage utils:z b64.from.0 set string storage utils:api b64.in 0 1
data modify storage utils:z b64.from.1 set string storage utils:api b64.in 1 2
data modify storage utils:z b64.from.2 set string storage utils:api b64.in 2 3
data modify storage utils:z b64.from.3 set string storage utils:api b64.in 3 4
data modify storage utils:api b64.in set string storage utils:api b64.in 4

data modify storage utils:z b64.to set value {0:0,1:0,2:0}

function utils:z/b64/d/iterate with storage utils:z b64.from