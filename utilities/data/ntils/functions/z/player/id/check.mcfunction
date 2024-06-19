execute unless entity @s[tag=ntils.z.id] run return run function ntils:z/player/id/new

data modify storage ntils:z macro set value {uuid:''}
data modify storage ntils:z macro.uuid set from entity @s UUID

function ntils:z/player/id/fetch_macro with storage ntils:z macro