$execute store result score #bin0 utils.temp run data get storage utils:z lookups.b64.num.ascii.$(0) 65536
$execute store result score #add1 utils.temp run data get storage utils:z lookups.b64.num.ascii.$(1) 256
$execute store result score #add2 utils.temp run data get storage utils:z lookups.b64.num.ascii.$(2) 

scoreboard players operation #bin0 utils.temp += #add1 utils.temp
execute store result score #bin1 utils.temp store result score #bin2 utils.temp store result score #bin3 utils.temp run scoreboard players operation #bin0 utils.temp += #add2 utils.temp

scoreboard players operation #bin1 utils.temp /= #2^6 utils.const
scoreboard players operation #bin2 utils.temp /= #2^12 utils.const
scoreboard players operation #bin3 utils.temp /= #2^18 utils.const

execute store result storage utils:z b64.to.0 int 1 run scoreboard players operation #bin0 utils.temp %= #2^6 utils.const
execute store result storage utils:z b64.to.1 int 1 run scoreboard players operation #bin1 utils.temp %= #2^6 utils.const
execute store result storage utils:z b64.to.2 int 1 run scoreboard players operation #bin2 utils.temp %= #2^6 utils.const
execute store result storage utils:z b64.to.3 int 1 run scoreboard players operation #bin3 utils.temp %= #2^6 utils.const

function utils:z/b64/e/fetch_b64 with storage utils:z b64.to

scoreboard players remove #loop utils.temp 1
execute unless score #loop utils.temp matches 1.. run return 0

data modify storage utils:z b64.from set value {0:'default',1:'default',2:'default'}

data modify storage utils:z b64.from[0] set from storage utils:api b64.in[0]
data modify storage utils:z b64.from[1] set from storage utils:api b64.in[1]
data modify storage utils:z b64.from[2] set from storage utils:api b64.in[2]

data remove storage utils:api b64.in[0]
data remove storage utils:api b64.in[0]
data remove storage utils:api b64.in[0]

function utils:z/b64/e/iterate with storage utils:z b64.from