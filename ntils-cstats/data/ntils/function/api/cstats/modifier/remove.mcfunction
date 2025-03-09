# CSTATS/MODIFIER/ADD
#
#   Given a player and the UUID of a stat modifier, removes the modifier from the player completely.
#   NOTE: This does not actually recalculate their stats! That only happens when refresh_stats is called.
#
# INPUT:
#   > Macro:
#       | UUID, string
#   > Misc:
#       | An open storage with the ntils:player player storage system.
#
# PERFORMANCE: Meh
#   Pretty much just a macro call +extras. Nothing extravagant.

execute unless score $ntils:cstats.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail
execute unless data storage ntils:api player.storage[{Open:True}] run return fail

$data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[].add_value[{uuid:"$(UUID)"}]
$data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[].add_multiplied_base[{uuid:"$(UUID)"}]
$data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[].add_multiplied_total[{uuid:"$(UUID)"}]