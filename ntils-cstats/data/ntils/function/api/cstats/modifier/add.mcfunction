# CSTATS/MODIFIER/ADD
#
#   Given a player, the name of a stat, the operation for the modifier to perform, the value of the modifier, and the UUID of the modifier (to ensure it doesn't get overwritten), applies a stat modifier to the player.
#   The stat modifier works exactly like a vanilla attribute modifier and will not go away until CSTATS/MODIFIER/REMOVE is called.
#   NOTE: This does not actually recalculate their stats! That only happens when refresh_stats is called.
#
# INPUT:
#   > Macro:
#       | Name, string
#       | UUID, string
#       | Operation, string
#       | Value, number
#   > Misc:
#       | An open storage with the ntils:player player storage system.
#
# PERFORMANCE: Meh
#   Pretty much just a macro call +extras. Nothing extravagant.

execute unless score $ntils:cstats.ENABLED ntils.API.singularity.flag matches 1.. run return fail
execute unless data storage ntils:api player.storage[{Open:True}] run return fail

$data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[{name:"$(Name)"}].add_value[{uuid:"$(UUID)"}]
$data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[{name:"$(Name)"}].add_multiplied_base[{uuid:"$(UUID)"}]
$data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[{name:"$(Name)"}].add_multiplied_total[{uuid:"$(UUID)"}]

$execute unless data storage player.storage[{Open:True}].data.ntils.z.cstats.modifiers[{name:"$(Name)"}] run data modify storage player.storage[{Open:True}].data.ntils.z.cstats.modifiers append value {name:"$(Name)",add_multiplied_base:[],add_value:[],add_multiplied_total:[]}
$data modify storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[{name:"$(Name)"}]."$(Operation)" append value {value:$(Value)d,uuid:$(UUID),source:"ntils.z.cstats.added_with_modifier_command"}