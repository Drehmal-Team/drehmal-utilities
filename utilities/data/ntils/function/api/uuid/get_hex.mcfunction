function ntils:api/uuid/get_int
data modify storage ntils:api uuid.to_hex.in set from storage ntils:api uuid.get_int.out
function ntils:api/uuid/to_hex
data modify storage ntils:api uuid.get_hex.out set from storage ntils:api uuid.to_hex.out