# CSTATS/EDIT_MODIFIERS
#
#   Given a player, refreshes that players stats.
#   Notably, by "a player," this interacts with an open player storage using the ntils:player module.
#   If no open player storage exists, then this function will fail.
#
# INPUT: 
#   > Misc:
#       | An open storage with the ntils:player player storage system.
#
# OUTPUT:
#   > Storage:
#       | ntils:api player.storage[{Open:True}].data.ntils.api.cstats.stats, object. A standard NBT object in the format {stat:value}, containing the calculated values of all stats affecting the player.
#
# PERFORMANCE: Bad
#   Has to perform a macro function call for each unique stat name on the player as well as a normal function call for each modifier.
#   Not as bad as it sounds, because all told this is still better than anything that uses player NBT directly.

execute unless score $ntils:cstats.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail
execute unless data storage ntils:api player.storage[{Open:True}] run return fail

execute if data storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[{add_value:[],add_multiplied_base:[],add_multiplied_total:[]}] run data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[{add_value:[],add_multiplied_base:[],add_multiplied_total:[]}]

data modify storage ntils:z cstats.refresh_stats.temp set value []
data modify storage ntils:z cstats.refresh_stats.temp set from storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers

data modify storage ntils:z cstats.refresh_stats.out set value {}
execute if data storage ntils:z cstats.refresh_stats.temp[] run function ntils:z/cstats/refresh_stats/loop with storage ntils:z cstats.refresh_stats.temp[-1]

data modify storage ntils:api player.storage[{Open:True}].data.ntils.api.cstats.stats set from storage ntils:z cstats.refresh_stats.out