scoreboard players reset #CURRENT_UNIX_TIME# ntils.z.global
scoreboard players reset #time.VOID_LOADED# ntils.z.global

execute unless score $ntils:time.ENABLED ntils.API.singularity.flag matches 1.. run return fail

scoreboard players set #time.VOID_LOADED# ntils.z.global 1
setblock 0 5 0 furnace

function ntils:api/time/force_time_sync