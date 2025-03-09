# MATH/QUATERNION/FROM_CONTEXT
#
#   Given a yaw/pitch rotation, generates a quaternion representing rotation in that direction.
#   NOTE: If the rotation you are grabbing happens to be the rotation context, use math/quaternion/from_context instead!
#
# INPUT:
#   > Storage:
#       | ntils:api math.quaternion.from_yaw_pitch.in, float list (2)
#   > Flags:
#       | $ntils:math.DO_SCOREBOARD_OUTPUT
#
# OUTPUT:
#   > Scoreboard:
#       | #math.quaternion.out.[x,y,z,w] ntils.API (4)  -> Scores representing the vector and scalar quantities of the quaternion, scaled by 1000.
#       |                                                  NOTE: The storage output is generated at higher precision than the scoreboard output.
#       |                                                        This is done to keep scoreboard output consistent across all quaternion/vector/matrix functions.
#   > Storage:
#       | ntils:api math.quaternion.out, float list (4). The quaternion in float list form for directly setting display transformations.
#
# PERFORMANCE: Good
#   Better than from_context if you already have a rotation to work with. However, if you don't have the data
#   to use directly, it's faster to call from_context instead of getting said data and calling this.


data modify storage ntils:z math.quaternion.rot set from storage ntils:api math.quaternion.from_yaw_pitch.in
execute store result storage ntils:z math.quaternion.rot[0] float 0.000005 run data get storage ntils:z math.quaternion.rot[0] 100000
execute store result storage ntils:z math.quaternion.rot[1] float 0.000005 run data get storage ntils:z math.quaternion.rot[1] 100000
data modify entity 00000023-0000-0000-0000-002300000000 Rotation set from storage ntils:z math.quaternion.rot
execute as 00000023-0000-0000-0000-002300000000 at @s positioned .0 0 .0 run function ntils:z/math/quaternion/from_yaw_pitch/as_marker

function ntils:z/math/quaternion/from_yaw_pitch/eval