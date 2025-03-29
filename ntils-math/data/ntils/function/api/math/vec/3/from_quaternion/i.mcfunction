# MATH/VEC/3/FROM_QUATERNION/I
#
#   Gets the I component of the rotation matrix from a UNIT quaternion.
#   This is equivalent to getting the "X" direction of the input quaternion.
#   NOTE: This ONLY works on unit quaternions (quaternions with a length of 1). Anything else WILL
#         cause this entire function to melt into a puddle. You have been warned!
#
# INPUT:
#   > Storage:
#       | ntils:api math.quaternion.in, number list (4). The quaternion.
#   > Flags:
#       | $ntils:math.DO_SCOREBOARD_OUTPUT
#
# OUTPUT:
#   > Scoreboard:
#       | #math.vec.3.out.[0,1,2] ntils.API (3)         <- The output vector, scaled by 1000.
#       |                                                  NOTE: The storage output is generated at higher precision than the scoreboard output.
#       |                                                        This is done to keep scoreboard output consistent across all quaternion/vector/matrix functions.
#   > Storage:
#       | ntils:api math.vec.3.out, double list (3)
#
# PERFORMANCE: Good

execute store result score #math.vec.3.out.0 ntils.API store result score #q1 ntils.z.math.vec.temp run data get storage ntils:api math.quaternion.in[0] 23170
execute store result score #math.vec.3.out.1 ntils.API store result score #q2 ntils.z.math.vec.temp run data get storage ntils:api math.quaternion.in[1] 23170
execute store result score #math.vec.3.out.2 ntils.API store result score #q3 ntils.z.math.vec.temp run data get storage ntils:api math.quaternion.in[2] 23170

execute store result score #q4 ntils.z.math.vec.temp run data get storage ntils:api math.quaternion.in[3] 23170

scoreboard players operation #math.vec.3.out.0 ntils.API *= #q1 ntils.z.math.vec.temp
scoreboard players operation #math.vec.3.out.1 ntils.API *= #q1 ntils.z.math.vec.temp
scoreboard players operation #math.vec.3.out.2 ntils.API *= #q1 ntils.z.math.vec.temp

scoreboard players operation #q1 ntils.z.math.vec.temp *= #q4 ntils.z.math.vec.temp
scoreboard players operation #q2 ntils.z.math.vec.temp *= #q4 ntils.z.math.vec.temp
scoreboard players operation #q3 ntils.z.math.vec.temp *= #q4 ntils.z.math.vec.temp

execute store result storage ntils:api math.vec.3.out[0] double 0.0000000037252903002 run scoreboard players operation #math.vec.3.out.1 ntils.API -= #q3 ntils.z.math.vec.temp

execute store result storage ntils:api math.vec.3.out[1] double 0.0000000037252903002 run scoreboard players operation #math.vec.3.out.2 ntils.API += #q2 ntils.z.math.vec.temp

scoreboard players operation #q4 ntils.z.math.vec.temp *= #q4 ntils.z.math.vec.temp
scoreboard players remove #q4 ntils.z.math.vec.temp 268424450

execute store result storage ntils:api math.vec.3.out[2] double 0.0000000037252903002 run scoreboard players operation #math.vec.3.out.0 ntils.API += #q4 ntils.z.math.vec.temp

execute unless score $ntils:math.DO_SCOREBOARD_OUTPUT ntils.API.math.flag matches -2147483648..2147483647 run return 0

scoreboard players operation #math.vec.3.out.0 ntils.API /= #23170^2/2000 ntils.z.const
scoreboard players operation #math.vec.3.out.1 ntils.API /= #23170^2/2000 ntils.z.const
scoreboard players operation #math.vec.3.out.2 ntils.API /= #23170^2/2000 ntils.z.const