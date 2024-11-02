data modify storage ntils:api b64.decode.in set string block 0 5 0 Items[0].components."minecraft:profile".properties[0].value 24 40
function ntils:api/b64/decode
data modify storage ntils:api string.concat.in set from storage ntils:api b64.decode.out
function ntils:api/string/concat
data modify storage ntils:z time.load.m.val set string storage ntils:api string.concat.out 0 10
data modify storage ntils:z time.load.m.mil set string storage ntils:api string.concat.out 10
function ntils:z/time/force_time_sync/set_time with storage ntils:z time.load.m

execute in ntils:z/empty run fill 1 2 0 1 3 0 air
execute in ntils:z/empty run setblock 1 2 0 command_block[facing=up]{auto:True,Command:"help me"}
execute in ntils:z/empty run setblock 1 3 0 chain_command_block[facing=up]{auto:True,Command:"function ntils:z/time/force_time_sync/final"}