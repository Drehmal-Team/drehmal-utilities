# CAST/RAY/SLOW/START
#
#   Casts a ray from ~ ~ ~ in the looking direction and determines what the ray hits.
#
# INPUT:
#   > Macro:
#       | Args, object. A series of optional macro inputs.
#       |   {
#       |       Type, string. The type of block hitbox to detect intersections with. Supports the following:
#       |           - "regular":    The outlines that appear when you hover over a block.
#       |           - "collision":  The actual collision mesh of the block.
#       |           Defaults to "regular" if unspecified.
#       |
#       |       Distance, number. The maximum allowable distance of the raycast, in blocks.
#       |           Defaults to 46300 blocks if unspecified.
#       |   }


execute unless score $ntils:cast.ENABLED ntils.API.singularity.flag matches 1.. run return fail
