$execute store result score #bin0 ntils.temp run data get storage ntils:z lookups.b64.num.b64.$(0) 262144
$execute store result score #add1 ntils.temp run data get storage ntils:z lookups.b64.num.b64.$(1) 4096
$execute store result score #add2 ntils.temp run data get storage ntils:z lookups.b64.num.b64.$(2) 64
$execute store result score #add3 ntils.temp run data get storage ntils:z lookups.b64.num.b64.$(3)

scoreboard players operation #bin0 ntils.temp += #add1 ntils.temp
scoreboard players operation #bin0 ntils.temp += #add2 ntils.temp
execute store result score #bin1 ntils.temp store result score #bin2 ntils.temp run scoreboard players operation #bin0 ntils.temp += #add3 ntils.temp

scoreboard players operation #bin1 ntils.temp /= #2^8 ntils.const
scoreboard players operation #bin2 ntils.temp /= #2^16 ntils.const

execute store result storage ntils:z b64.to.0 int 1 run scoreboard players operation #bin0 ntils.temp %= #2^8 ntils.const
execute store result storage ntils:z b64.to.1 int 1 run scoreboard players operation #bin1 ntils.temp %= #2^8 ntils.const
execute store result storage ntils:z b64.to.2 int 1 run scoreboard players operation #bin2 ntils.temp %= #2^8 ntils.const

function ntils:z/b64/d/fetch_ascii with storage ntils:z b64.to

scoreboard players remove #loop ntils.temp 1
execute unless score #loop ntils.temp matches 1.. run return 0

data modify storage ntils:z b64.from.0 set string storage ntils:api b64.in 0 1
data modify storage ntils:z b64.from.1 set string storage ntils:api b64.in 1 2
data modify storage ntils:z b64.from.2 set string storage ntils:api b64.in 2 3
data modify storage ntils:z b64.from.3 set string storage ntils:api b64.in 3 4
data modify storage ntils:api b64.in set string storage ntils:api b64.in 4

function ntils:z/b64/d/iterate with storage ntils:z b64.from