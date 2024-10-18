# UUID/GET_HEX
#
# Gets the hexadecimal representation of this entities UUID. Stores it at ntils:api uuid.to_hex.out
#
# Performance: Good
#   Needs two macros for the hex conversion but otherwise highly optimized. Don't overuse this if you don't need to, though.

execute unless score #uuid ntils.z.singularity.flag matches 1 run return fail
function ntils:api/uuid/get_int
data modify storage ntils:api uuid.to_hex.in set from storage ntils:api uuid.get_int.out
function ntils:api/uuid/to_hex
data modify storage ntils:api uuid.get_hex.out set from storage ntils:api uuid.to_hex.out