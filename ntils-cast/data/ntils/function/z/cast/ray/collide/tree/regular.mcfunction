execute if block ~ ~ ~ #ntils:api/cast/hitbox/regular/full run return run function ntils:z/cast/ray/collide/full

loot replace entity 00000000-0000-0000-0000-000002160ec0 container.0 loot ntils:api/cast/hitbox/regular
data modify storage ntils:z cast.ray.boxes set from entity 00000000-0000-0000-0000-000002160ec0 item.components."minecraft:custom_data".ntils.api.cast.hitbox.get

execute if data storage ntils:z cast.ray.boxes[] run return run function ntils:z/cast/ray/collide/shape/main
return fail