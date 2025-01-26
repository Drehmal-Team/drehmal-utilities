# UUID/TO_HEX
#
#   Converts an int-array UUID to a stringified UUID. Used mainly for macroing in a direct UUID access.
#
# INPUT:
#   > Storage:
#       | ntils:api uuid.to_hex.in, int list (4)
#
# OUTPUT:
#   > Storage:
#       | ntils:api uuid.to_hex.out, string
#
# Performance: Okay
#   Two macros + 29 commands. Not very ideal. Adding a "cache" for globally storing generated hex UUIDs would
#   hypothetically boost best-case performance times, but has risk with scoreboard wiping.

execute unless score $ntils:uuid.ENABLED ntils.API.singularity.flag matches 1 run return fail

data modify storage ntils:z uuid.to_hex.in set from storage ntils:api uuid.to_hex.in
function ntils:z/uuid/to_hex
data modify storage ntils:api uuid.to_hex.out set from storage ntils:z uuid.to_hex.out