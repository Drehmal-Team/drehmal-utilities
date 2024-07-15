data modify storage ntils:api b64.decode.in set string block -30000000 1 15000000 Items[0].components."minecraft:profile".properties[0].value 24 44
function ntils:api/b64/decode
data modify storage ntils:api string.concat.in set from storage ntils:api b64.decode.out
function ntils:api/string/concat
data modify storage ntils:api string.concat.out set string storage ntils:api string.concat.out 0 -2

data modify storage ntils:z time.get.irl.macro set value {}

data modify storage ntils:api time.get.irl.out set from storage ntils:api string.concat.out
#scoreboard players set #TIME_SPENT# ntils.z.global 0
scoreboard players set #GETTING_TIME# ntils.z.global 0