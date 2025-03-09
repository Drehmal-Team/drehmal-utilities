# FL/CLEAR
#
# Unloads all forceloaded chunks with a specific Id, Name, or both.
#
# MACRO ARGUMENTS:
#   Args: Object containing optional parameters.
#       -Id: The ID of the forceload to remove. Removes all loads with that ID
#       -Name: The name of the forceload to remove. Removes all loads with that name
#   Note: If both Name and Id are specified, all forceloads with both that name and id will be deleted. If neither are specified, all loads will be deleted.
#
# Performance: Good
#   Just macro calls and some simple list filtering here.

execute unless score $ntils:fl.ENABLED ntils.API.flag matches 1.. run return fail

$data modify storage ntils:z fl.clear.args set value $(Args)
data modify storage ntils:z fl.clear.macro set value {find:{}}
execute if data storage ntils:z fl.clear.args.Id run data modify storage ntils:z fl.clear.macro.find.id set from storage ntils:z fl.clear.args.Id
execute if data storage ntils:z fl.clear.args.Name run data modify storage ntils:z fl.clear.macro.find.name set from storage ntils:z fl.clear.args.Name
data modify storage ntils:z fl.clear.list set value []
function ntils:z/fl/clear/get with storage ntils:z fl.clear.macro
execute if data storage ntils:z fl.clear.list[] run function ntils:z/fl/clear/loop with storage ntils:z fl.clear.list[-1]