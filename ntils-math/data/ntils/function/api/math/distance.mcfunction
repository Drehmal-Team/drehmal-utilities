# MATH/DISTANCE
#
#   Calculates the length of a 1, 2, or 3 component vector with floating-point precision.
#
# INPUT:
#   > Storage:
#       | ntils:api math.distance.in, object. Not all of X, Y, and Z need to be specified for this to work, but at least one needs to be.
#       |   {
#       |       X, float
#       |       Y, float
#       |       Z, float
#       |   }
#
# OUTPUT:
#   > Storage:
#       | ntils:api math.distance.out, float.
#
# PERFORMANCE: Good
#   Use this if you need floating-point precision on your distance calculation. Otherwise, just use the scoreboard method.

data modify storage ntils:z math.distance.transform set value [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]
execute if data storage ntils:api math.distance.in.X run data modify storage ntils:z math.distance.transform[0] set from storage ntils:api math.distance.in.X
execute if data storage ntils:api math.distance.in.Y run data modify storage ntils:z math.distance.transform[4] set from storage ntils:api math.distance.in.Y
execute if data storage ntils:api math.distance.in.Z run data modify storage ntils:z math.distance.transform[8] set from storage ntils:api math.distance.in.Z
execute in ntils:z/empty summon item_display run function ntils:z/math/distance/main