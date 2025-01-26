# MATH/QUATERNION/FROM_CONTEXT
#
#   Given a yaw/pitch rotation, generates a quaternion representing rotation in that direction.
#   NOTE: If the rotation you are grabbing happens to be the rotation context, use math/quaternion/from_context instead!
#
# INPUT:
#   > Storage:
#       | ntils:api math.quaternion.from_yaw_pitch.in, float list (2)
#
# OUTPUT:
#   > Scoreboard:
#       | #math.quaternion.out.[x,y,z,w] ntils.API (4)  -> Scores representing the vector and scalar quantities of the quaternion, scaled by 46340.
#   > Storage:
#       | ntils:api math.quaternion.out, float list (4). The quaternion in float list form for directly setting display transformations.
#
# PERFORMANCE: Good
#   Slightly better than from_context, but the difference is tiny. If you aren't working with a rotation directly, just use from_context, it'll be
#   faster than the entity stuff you would have to do to call this.


data modify storage ntils:z math.quaternion.rot set from storage ntils:api math.quaternion.from_yaw_pitch.in
execute store result storage ntils:z math.quaternion.rot[0] float 0.000005 run data get storage ntils:z math.quaternion.rot[0] 100000
execute store result storage ntils:z math.quaternion.rot[1] float 0.000005 run data get storage ntils:z math.quaternion.rot[1] 100000
data modify entity 00000023-0000-0000-0000-002300000000 Rotation set from storage ntils:z math.quaternion.rot
execute as 00000023-0000-0000-0000-002300000000 at @s positioned .0 0 .0 run function ntils:z/math/quaternion/from_yaw_pitch/as_marker

function ntils:z/math/quaternion/from_yaw_pitch/eval