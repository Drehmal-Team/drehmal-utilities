# MATH/VEC/3/MULTIPLY_BY_QUATERNION
#
#   Multiplies a vector by a quaternion.
#
# INPUT:
#   > Storage:
#       | ntils:api math.quaternion.in, number list (4)
#       | ntils:api math.vec.3.in, number list (3)
#
# OUTPUT:
#   > Scoreboard:
#       | #math.vec.3.out.[x,y,z] ntils.API (3)
#   > Storage:
#       | ntils:api math.vec.3.out, double list (3)
#
# PERFORMANCE: Good
#   Uses an implementation of https://gamedev.stackexchange.com/questions/28395/rotating-vector3-by-a-quaternion/50545#50545 for this calculation.
#   Much faster than a standard hamilton product.

return fail