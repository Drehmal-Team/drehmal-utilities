# MATH/QUATERNION/MULTIPLY
#
#   Multiplies two quaternions using storage input.
#
# INPUT:
#   > Storage:
#       | ntils:api math.quaternion.multiply.in.left, float list (4)
#       | ntils:api math.quaternion.multiply.in.right, float list (4)
#   > Flags:
#       | $ntils:math.DO_SCOREBOARD_OUTPUT
#
# OUTPUT:
#   > Scoreboard:
#       | #math.quaternion.out.[x,y,z,w] ntils.API (4)  -> Scores representing the vector and scalar quantities of the quaternion, scaled by 1000.
#       |                                                  NOTE: The storage output is generated at higher precision than the scoreboard output.
#       |                                                        This is done to keep scoreboard output consistent across all quaternion/vector/matrix functions.
#   > Storage:
#       | ntils:api math.quaternion.out, float list (4)
#
# PERFORMANCE: Good

execute store result score #a2 ntils.z.math.quaternion.temp run data get storage ntils:api math.quaternion.multiply.in.right[0] 23170
execute store result score #b2 ntils.z.math.quaternion.temp run data get storage ntils:api math.quaternion.multiply.in.right[1] 23170
execute store result score #c2 ntils.z.math.quaternion.temp run data get storage ntils:api math.quaternion.multiply.in.right[2] 23170
execute store result score #d2 ntils.z.math.quaternion.temp run data get storage ntils:api math.quaternion.multiply.in.right[3] 23170

execute store result score #math.quaternion.out.x ntils.API store result score #a1c2 ntils.z.math.quaternion.temp store result score #math.quaternion.out.z ntils.API store result score #a1a2 ntils.z.math.quaternion.temp run data get storage ntils:api math.quaternion.multiply.in.left[0] 23170

scoreboard players operation #math.quaternion.out.x ntils.API *= #d2 ntils.z.math.quaternion.temp
scoreboard players operation #a1c2 ntils.z.math.quaternion.temp *= #c2 ntils.z.math.quaternion.temp
scoreboard players operation #math.quaternion.out.z ntils.API *= #b2 ntils.z.math.quaternion.temp
scoreboard players operation #a1a2 ntils.z.math.quaternion.temp *= #a2 ntils.z.math.quaternion.temp

execute store result score #b1c2 ntils.z.math.quaternion.temp store result score #math.quaternion.out.y ntils.API store result score #b1a2 ntils.z.math.quaternion.temp store result score #b1b2 ntils.z.math.quaternion.temp run data get storage ntils:api math.quaternion.multiply.in.left[1] 23170

scoreboard players operation #b1c2 ntils.z.math.quaternion.temp *= #c2 ntils.z.math.quaternion.temp
scoreboard players operation #math.quaternion.out.y ntils.API *= #d2 ntils.z.math.quaternion.temp
scoreboard players operation #b1a2 ntils.z.math.quaternion.temp *= #a2 ntils.z.math.quaternion.temp
scoreboard players operation #b1b2 ntils.z.math.quaternion.temp *= #b2 ntils.z.math.quaternion.temp

execute store result score #c1b2 ntils.z.math.quaternion.temp store result score #c1a2 ntils.z.math.quaternion.temp store result score #c1d2 ntils.z.math.quaternion.temp store result score #c1c2 ntils.z.math.quaternion.temp run data get storage ntils:api math.quaternion.multiply.in.left[2] 23170

scoreboard players operation #c1b2 ntils.z.math.quaternion.temp *= #b2 ntils.z.math.quaternion.temp
scoreboard players operation #c1a2 ntils.z.math.quaternion.temp *= #a2 ntils.z.math.quaternion.temp
scoreboard players operation #c1d2 ntils.z.math.quaternion.temp *= #d2 ntils.z.math.quaternion.temp
scoreboard players operation #c1c2 ntils.z.math.quaternion.temp *= #c2 ntils.z.math.quaternion.temp

execute store result score #d1a2 ntils.z.math.quaternion.temp store result score #d1b2 ntils.z.math.quaternion.temp store result score #d1c2 ntils.z.math.quaternion.temp store result score #math.quaternion.out.w ntils.API run data get storage ntils:api math.quaternion.multiply.in.left[3] 23170

scoreboard players operation #d1a2 ntils.z.math.quaternion.temp *= #a2 ntils.z.math.quaternion.temp
scoreboard players operation #d1b2 ntils.z.math.quaternion.temp *= #b2 ntils.z.math.quaternion.temp
scoreboard players operation #d1c2 ntils.z.math.quaternion.temp *= #c2 ntils.z.math.quaternion.temp
scoreboard players operation #math.quaternion.out.w ntils.API *= #d2 ntils.z.math.quaternion.temp

# ADDING THE PRODUCTS
scoreboard players operation #math.quaternion.out.x ntils.API += #b1c2 ntils.z.math.quaternion.temp
scoreboard players operation #math.quaternion.out.x ntils.API -= #c1b2 ntils.z.math.quaternion.temp
execute store result storage ntils:api math.quaternion.out[0] float 0.00000000186272152183 run scoreboard players operation #math.quaternion.out.x ntils.API += #d1a2 ntils.z.math.quaternion.temp

scoreboard players operation #math.quaternion.out.y ntils.API -= #a1c2 ntils.z.math.quaternion.temp
scoreboard players operation #math.quaternion.out.y ntils.API += #c1a2 ntils.z.math.quaternion.temp
execute store result storage ntils:api math.quaternion.out[1] float 0.00000000186272152183 run scoreboard players operation #math.quaternion.out.y ntils.API += #d1b2 ntils.z.math.quaternion.temp

scoreboard players operation #math.quaternion.out.z ntils.API -= #b1a2 ntils.z.math.quaternion.temp
scoreboard players operation #math.quaternion.out.z ntils.API += #c1d2 ntils.z.math.quaternion.temp
execute store result storage ntils:api math.quaternion.out[2] float 0.00000000186272152183 run scoreboard players operation #math.quaternion.out.z ntils.API += #d1c2 ntils.z.math.quaternion.temp

scoreboard players operation #math.quaternion.out.w ntils.API -= #a1a2 ntils.z.math.quaternion.temp
scoreboard players operation #math.quaternion.out.w ntils.API -= #b1b2 ntils.z.math.quaternion.temp
execute store result storage ntils:api math.quaternion.out[3] float 0.00000000186272152183 run scoreboard players operation #math.quaternion.out.w ntils.API -= #c1c2 ntils.z.math.quaternion.temp

execute unless score $ntils:math.DO_SCOREBOARD_OUTPUT ntils.API.math.flag matches -2147483648..2147483647 run return 0

scoreboard players operation #math.quaternion.out.x ntils.API /= #(((2^31)-1)/4)/1000 ntils.z.const
scoreboard players operation #math.quaternion.out.y ntils.API /= #(((2^31)-1)/4)/1000 ntils.z.const
scoreboard players operation #math.quaternion.out.z ntils.API /= #(((2^31)-1)/4)/1000 ntils.z.const
scoreboard players operation #math.quaternion.out.w ntils.API /= #(((2^31)-1)/4)/1000 ntils.z.const