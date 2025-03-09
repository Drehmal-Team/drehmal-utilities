# TIME/FORCE_TIME_SYNC
#
# Forces a server time resync by fetching new player head and command block time data.
#
# NOTE: Don't run this unless you reallllly need to! The datapack always syncs itself on load, so this is just for a situation where something has gone very wrong.
#
# PERFORMANCE: Good
# Nothing laggy is happening here. Connecting to the internet to get head data just takes a little bit of time.

execute unless score $ntils:time.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail
execute unless score #time.VOID_LOADED# ntils.z.global matches 1.. run return fail
execute if score #time.FORCING_SYNC# ntils.z.global matches 1.. run return fail

scoreboard players reset #CURRENT_UNIX_TIME# ntils.z.global

schedule clear ntils:z/time/force_time_sync/sch/second
function ntils:z/time/force_time_sync/start