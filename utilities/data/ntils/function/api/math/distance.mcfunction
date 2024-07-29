# MATH/DISTANCE
#
# Given a vector specified with X, Y, and Z, calculates the distance with floating-point precision using stolen display transformation wizardy.
#   Input: {X:float,Y:float,Z:float} at ntils:api math.distance.in
#
# PERFORMANCE: Meh
#   Use this if you need floating-point precision on your distance calculation. Otherwise, just use the scoreboard method.

data modify storage ntils:z math.distance.transform set value [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]
execute if data storage ntils:api math.distance.in.X run data modify storage ntils:z math.distance.transform[0] set from storage ntils:api math.distance.in.X
execute if data storage ntils:api math.distance.in.Y run data modify storage ntils:z math.distance.transform[4] set from storage ntils:api math.distance.in.Y
execute if data storage ntils:api math.distance.in.Z run data modify storage ntils:z math.distance.transform[8] set from storage ntils:api math.distance.in.Z
execute in ntils:z/empty summon item_display run function ntils:z/math/distance/main