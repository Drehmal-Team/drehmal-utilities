# CSTATS/BASE/SET
#
#   Given a player, the name of the stat to set, and a value to set it to, sets the stat for a player to a particular value. 
#   NOTE: This does not actually recalculate their stats! That only happens when refresh_stats is called.
#
# INPUT:
#   > Macro:
#       | Name, string
#       | Value, number
#   > Misc:
#       | An open storage with the ntils:player player storage system.
#
# PERFORMANCE: Meh
#   Pretty much just a macro call +extras. Nothing extravagant.

execute unless score $ntils:cstats.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail
execute unless data storage ntils:api player.storage[{Open:True}] run return fail

$data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[{name:"$(Name)"}].add_value[{source:"ntils.z.cstats.added_with_base_command"}]

$execute unless data storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[{name:"$(Name)"}] run data modify storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers append value {name:"$(Name)",add_multiplied_base:[],add_value:[],add_multiplied_total:[]}
$data modify storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[{name:"$(Name)"}]."add_value" append value {value:$(Value)d,uuid:"ntils.z.cstats.added_with_base_command",source:"ntils.z.cstats.added_with_base_command"}