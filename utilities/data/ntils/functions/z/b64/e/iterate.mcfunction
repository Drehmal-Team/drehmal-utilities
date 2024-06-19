$execute store result score #bin0 ntils.temp run data get storage ntils:z lookups.b64.num.ascii."$(0)" 65536
$execute store result score #add1 ntils.temp run data get storage ntils:z lookups.b64.num.ascii."$(1)" 256
$execute store result score #add2 ntils.temp run data get storage ntils:z lookups.b64.num.ascii."$(2)" 

scoreboard players operation #bin0 ntils.temp += #add1 ntils.temp
execute store result score #bin1 ntils.temp store result score #bin2 ntils.temp store result score #bin3 ntils.temp run scoreboard players operation #bin0 ntils.temp += #add2 ntils.temp

scoreboard players operation #bin1 ntils.temp /= #2^6 ntils.const
scoreboard players operation #bin2 ntils.temp /= #2^12 ntils.const
scoreboard players operation #bin3 ntils.temp /= #2^18 ntils.const

execute store result storage ntils:z b64.to.0 int 1 run scoreboard players operation #bin0 ntils.temp %= #2^6 ntils.const
execute store result storage ntils:z b64.to.1 int 1 run scoreboard players operation #bin1 ntils.temp %= #2^6 ntils.const
execute store result storage ntils:z b64.to.2 int 1 run scoreboard players operation #bin2 ntils.temp %= #2^6 ntils.const
execute store result storage ntils:z b64.to.3 int 1 run scoreboard players operation #bin3 ntils.temp %= #2^6 ntils.const

function ntils:z/b64/e/fetch_b64 with storage ntils:z b64.to

scoreboard players remove #loop ntils.temp 1
execute unless score #loop ntils.temp matches 1.. run return 0

data modify storage ntils:z b64.from set value {0:'default',1:'default',2:'default'}

data modify storage ntils:z b64.from[0] set from storage ntils:api b64.in[0]
data modify storage ntils:z b64.from[1] set from storage ntils:api b64.in[1]
data modify storage ntils:z b64.from[2] set from storage ntils:api b64.in[2]

data remove storage ntils:api b64.in[0]
data remove storage ntils:api b64.in[0]
data remove storage ntils:api b64.in[0]

function ntils:z/b64/e/iterate with storage ntils:z b64.from