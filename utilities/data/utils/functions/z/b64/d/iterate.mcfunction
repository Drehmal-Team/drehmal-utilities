$execute store result score #bin0 utils.temp run data get storage utils:z lookups.b64.num.b64.$(0) 262144
$execute store result score #add1 utils.temp run data get storage utils:z lookups.b64.num.b64.$(1) 4096
$execute store result score #add2 utils.temp run data get storage utils:z lookups.b64.num.b64.$(2) 64
$execute store result score #add3 utils.temp run data get storage utils:z lookups.b64.num.b64.$(3)

scoreboard players operation #bin0 utils.temp += #add1 utils.temp
scoreboard players operation #bin0 utils.temp += #add2 utils.temp
execute store result score #bin1 utils.temp store result score #bin2 utils.temp run scoreboard players operation #bin0 utils.temp += #add3 utils.temp

scoreboard players operation #bin1 utils.temp /= #2^8 utils.const
scoreboard players operation #bin2 utils.temp /= #2^16 utils.const

execute store result storage utils:z b64.to.0 int 1 run scoreboard players operation #bin0 utils.temp %= #2^8 utils.const
execute store result storage utils:z b64.to.1 int 1 run scoreboard players operation #bin1 utils.temp %= #2^8 utils.const
execute store result storage utils:z b64.to.2 int 1 run scoreboard players operation #bin2 utils.temp %= #2^8 utils.const

function utils:z/b64/d/fetch_ascii with storage utils:z b64.to

scoreboard players remove #loop utils.temp 1
execute unless score #loop utils.temp matches 1.. run return 0

data modify storage utils:z b64.from.0 set string storage utils:api b64.in 0 1
data modify storage utils:z b64.from.1 set string storage utils:api b64.in 1 2
data modify storage utils:z b64.from.2 set string storage utils:api b64.in 2 3
data modify storage utils:z b64.from.3 set string storage utils:api b64.in 3 4
data modify storage utils:api b64.in set string storage utils:api b64.in 4

function utils:z/b64/d/iterate with storage utils:z b64.from