$execute store result score #bin0 ntils.z.b64.temp run data get storage ntils:z lookups.b64.num.b64.$(0) 262144
$execute store result score #add1 ntils.z.b64.temp run data get storage ntils:z lookups.b64.num.b64.$(1) 4096
$execute store result score #add2 ntils.z.b64.temp run data get storage ntils:z lookups.b64.num.b64.$(2) 64
$execute store result score #add3 ntils.z.b64.temp run data get storage ntils:z lookups.b64.num.b64.$(3)

scoreboard players operation #bin0 ntils.z.b64.temp += #add1 ntils.z.b64.temp
scoreboard players operation #bin0 ntils.z.b64.temp += #add2 ntils.z.b64.temp
execute store result score #bin1 ntils.z.b64.temp store result score #bin2 ntils.z.b64.temp run scoreboard players operation #bin0 ntils.z.b64.temp += #add3 ntils.z.b64.temp

scoreboard players operation #bin1 ntils.z.b64.temp /= #2^8 ntils.z.const
scoreboard players operation #bin2 ntils.z.b64.temp /= #2^16 ntils.z.const

execute store result storage ntils:z b64.decode.to.0 int 1 run scoreboard players operation #bin0 ntils.z.b64.temp %= #2^8 ntils.z.const
execute store result storage ntils:z b64.decode.to.1 int 1 run scoreboard players operation #bin1 ntils.z.b64.temp %= #2^8 ntils.z.const
execute store result storage ntils:z b64.decode.to.2 int 1 run scoreboard players operation #bin2 ntils.z.b64.temp %= #2^8 ntils.z.const

function ntils:z/b64/decode/fetch_ascii with storage ntils:z b64.decode.to

scoreboard players remove #loop ntils.z.b64.temp 1
execute unless score #loop ntils.z.b64.temp matches 1.. run return 0

data modify storage ntils:z b64.decode.from.0 set string storage ntils:z b64.decode.in 0 1
data modify storage ntils:z b64.decode.from.1 set string storage ntils:z b64.decode.in 1 2
data modify storage ntils:z b64.decode.from.2 set string storage ntils:z b64.decode.in 2 3
data modify storage ntils:z b64.decode.from.3 set string storage ntils:z b64.decode.in 3 4
data modify storage ntils:z b64.decode.in set string storage ntils:z b64.decode.in 4

function ntils:z/b64/decode/iterate with storage ntils:z b64.decode.from