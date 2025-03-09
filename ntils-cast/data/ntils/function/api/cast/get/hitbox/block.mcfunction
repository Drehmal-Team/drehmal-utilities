# CAST/GET/HITBOX/BLOCK
#
#   Returns hitbox data for the block at ~ ~ ~
#
# INPUT:
#   > Macro:
#       | Type, string. The type of hitbox to fetch. Supports the following:
#       |       - "regular":    The outlines that appear when you hover over a block.
#       |       - "collision":  The actual collision mesh of the block.
#
# OUTPUT:
#   > Storage:
#       | ntils:api cast.get.hitbox.block.out, int list (6) list (n). A series of block hitboxes. Each hitbox is six integers, with the first three being the lower corner and the next three being the upper corner.
#
# PERFORMANCE: Good
#   Performs a minimal amount of actual operations. Since only two macro inputs are ever used, the result can be safely cached.

execute unless score $ntils:cast.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail

data remove storage ntils:api cast.get.hitbox.block.out
$execute if block ~ ~ ~ #ntils:api/cast/hitbox/$(Type)/full run return run data modify storage ntils:api cast.get.hitbox.block.out set value [[I;0,0,0,16,16,16]]
$execute if block ~ ~ ~ #ntils:api/cast/hitbox/$(Type)/empty run return run data modify storage ntils:api cast.get.hitbox.block.out set value []
$loot replace entity 00000000-0000-0000-0000-000002160ec0 container.0 loot ntils:api/cast/hitbox/$(Type)
return run data modify storage ntils:api cast.get.hitbox.block.out set from entity 00000000-0000-0000-0000-000002160ec0 item.components."minecraft:custom_data".ntils.api.cast.hitbox.get