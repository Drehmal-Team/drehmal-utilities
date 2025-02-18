# MATH/QUATERNION/FROM_CONTEXT
#
#   Generates a quaternion representing the current ~ ~ yaw/pitch rotation.
#
# INPUT:
#   > Flags:
#       | #DO_SCOREBOARD_OUTPUT#
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
#   22 commands in total + entity NBT for reasonable performance overall.

rotate 00000023-0000-0000-0000-002300000000 ~ ~

# yes, this is faster than entity -> storage -> entity
execute store result entity 00000023-0000-0000-0000-002300000000 Rotation[0] float 0.000005 run data get entity 00000023-0000-0000-0000-002300000000 Rotation[0] 100000
execute store result entity 00000023-0000-0000-0000-002300000000 Rotation[1] float 0.000005 run data get entity 00000023-0000-0000-0000-002300000000 Rotation[1] 100000
execute as 00000023-0000-0000-0000-002300000000 at @s positioned .0 0 .0 run function ntils:z/math/quaternion/from_yaw_pitch/as_marker

function ntils:z/math/quaternion/from_yaw_pitch/eval