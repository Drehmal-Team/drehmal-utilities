# UUID/GET_INT
#
#   Gets the integer array representation of the UUID of the @s entity. Stores it at ntils:api uuid.to_int.out
#
# OUTPUT:
#   > Storage:
#       | ntils:api uuid.get_int.out, int list (4)
#
# Performance: Good
#   Caches the entities UUID in scores, meaning that running this multiple times on the same entity results in far better performance than getting its UUID.
#   Always use this instead of getting UUID data directly.

execute unless score $ntils:uuid.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail

function ntils:z/uuid/get_int
data modify storage ntils:api uuid.get_int.out set from storage ntils:z uuid.get_int.out