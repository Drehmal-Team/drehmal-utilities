data modify storage ntils:api b64.decode.in set string block 0 1 0 Items[0].components."minecraft:profile".properties[0].value 24 44
function ntils:api/b64/decode
data modify storage ntils:api string.concat.in set from storage ntils:api b64.decode.out
function ntils:api/string/concat

data modify storage ntils:z time.get.unix.macro set value {val:-1}
data modify storage ntils:z time.get.unix.macro set string storage ntils:api string.concat.out 0 -2

function ntils:z/time/get/unix/toscore with storage ntils:z time.get.unix.macro
function #ntils:api/time/listeners/unix

scoreboard players set #TIME_SPENT_UNIX# ntils.z.global 0
scoreboard players set #GETTING_UNIX_TIME# ntils.z.global 0