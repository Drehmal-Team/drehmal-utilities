# CSTATS/EDIT_MODIFIERS
#
# Given a list of Cstats modifiers and a player, applies those modifiers to that player.
# Notably, by "a player," this interacts with an open player storage using the ntils:player module.
# If no open player storage exists, then this function will fail.
#
# INPUT: 
#   A list of modifiers at the location ntils:api cstats.edit_modifiers.in.list. Modifiers take the following form:
#   {
#       name: string        | The name of the modifier. This is the stat it modifies.
#       value: number       | The value of the modifier. This is the amount it modifies by.
#       operation: string   | The operation performed by the modifier. This is the way it modifies. Valid operations are "add_value", "add_multiplied_total", "add_multiplied_base"
#       uuid: string        | The UUID of the modifier. Used for removing modifiers from the player.
#       slots: [            | The slots that are considiered valid. NOTE: This does not verify slots itself! You must handle that logic on your own.
#           string      
#       ]
#   }
#
#   A "source" stored at the location ntils:api cstats.edit_modifiers.in.source This is a namespaced ID reflecting the "owner" of the modifier.
#
# OUTPUT: This function does not have proper output. Instead, the stat modifications are applied directly to the players storage.

execute unless score $ntils:cstats.ENABLED ntils.API.singularity.flag matches 1.. run return fail
execute unless data storage ntils:api player.storage[{Open:True}] run return fail

data modify storage ntils:z cstats.edit_modifiers.out set value []
data modify storage ntils:z cstats.edit_modifiers.out set from storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers

data modify storage ntils:z cstats.edit_modifiers.temp set value []
data modify storage ntils:z cstats.edit_modifiers.temp set from storage ntils:api cstats.edit_modifiers.in.list
execute if data storage ntils:z cstats.edit_modifiers.temp[] run data modify storage ntils:z cstats.edit_modifiers.temp[].source set from storage ntils:api cstats.edit_modifiers.in.source

execute if data storage ntils:z cstats.edit_modifiers.temp[] run function ntils:z/cstats/edit_modifiers/loop with storage ntils:z cstats.edit_modifiers.temp[-1]

data modify storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers set from storage ntils:z cstats.edit_modifiers.out

function ntils:api/cstats/refresh_stats