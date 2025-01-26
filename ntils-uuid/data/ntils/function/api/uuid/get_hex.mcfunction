# UUID/GET_HEX
#
#   Gets the string representation of the UUID of the @s entity.
#
# OUTPUT:
#   > Storage:
#       | ntils:api uuid.get_hex.out, string
#
# Performance: Okay

execute unless score $ntils:uuid.ENABLED ntils.API.singularity.flag matches 1 run return fail

function ntils:z/uuid/get_int
data modify storage ntils:z uuid.to_hex.in set from storage ntils:z uuid.get_int.out
function ntils:z/uuid/to_hex
data modify storage ntils:api uuid.get_hex.out set from storage ntils:z uuid.to_hex.out