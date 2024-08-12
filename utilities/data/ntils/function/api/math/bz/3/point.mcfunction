# MATH/BZ/3/POINT
#
# Given a start point (a), an end point (c), a control point (b), and a t value, calculates a single point along a bezier curve.
#
#   INPUT SCORES:
#
# These are the inputs for the start point. Scale them by 1000
#   #math.bz.3.in.a.x ntils.API
#   #math.bz.3.in.a.y ntils.API
#   #math.bz.3.in.a.z ntils.API
#
# These are the inputs for the control point. Scale them by 1000
#   #math.bz.3.in.b.x ntils.API
#   #math.bz.3.in.b.y ntils.API
#   #math.bz.3.in.b.z ntils.API
#
# These are the inputs for the end point. Scale them by 1000
#   #math.bz.3.in.d.x ntils.API
#   #math.bz.3.in.d.y ntils.API
#   #math.bz.3.in.d.z ntils.API
#
# This is the percent along the curve you wish to have the point at. Set to a value between 0 and 1000
#   #math.bz.3.in.t ntils.API
#
#   OUTPUT SCORES:
#
# These are the scores for the XYZ output of the current position along the bezier curve.
#   #math.bz.3.out.x ntils.API
#   #math.bz.3.out.y ntils.API
#   #math.bz.3.out.z ntils.API
#
#   ADDITIONAL OUTPUT:
#
# At ntils:api math.bz.3.out, a [double,double,double] array with the position data from above will be created, so that you can easily just set an entities position data to it.
#
# PERFORMANCE: Good. However, don't run this if you can get away with using the iterator instead.

scoreboard players operation #math.bz.3.c2 ntils.z.math.bz.3.temp = #math.bz.3.in.c.x ntils.API
scoreboard players operation #math.bz.3.c2 ntils.z.math.bz.3.temp -= #math.bz.3.in.b.x ntils.API
scoreboard players operation #math.bz.3.c2 ntils.z.math.bz.3.temp -= #math.bz.3.in.b.x ntils.API
scoreboard players operation #math.bz.3.c2 ntils.z.math.bz.3.temp += #math.bz.3.in.a.x ntils.API
scoreboard players operation #math.bz.3.c2 ntils.z.math.bz.3.temp *= #math.bz.3.in.t ntils.API

scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp = #math.bz.3.in.b.x ntils.API
scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp -= #math.bz.3.in.a.x ntils.API
scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp *= #2000 ntils.z.const

scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp += #math.bz.3.c2 ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp *= #math.bz.3.in.t ntils.API
scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp /= #1000 ntils.z.const

execute store result score #math.bz.3.out.x ntils.API run scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp += #math.bz.3.in.a.x ntils.API

# Y --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.3.c2 ntils.z.math.bz.3.temp = #math.bz.3.in.c.y ntils.API
scoreboard players operation #math.bz.3.c2 ntils.z.math.bz.3.temp -= #math.bz.3.in.b.y ntils.API
scoreboard players operation #math.bz.3.c2 ntils.z.math.bz.3.temp -= #math.bz.3.in.b.y ntils.API
scoreboard players operation #math.bz.3.c2 ntils.z.math.bz.3.temp += #math.bz.3.in.a.y ntils.API
scoreboard players operation #math.bz.3.c2 ntils.z.math.bz.3.temp *= #math.bz.3.in.t ntils.API

scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp = #math.bz.3.in.b.y ntils.API
scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp -= #math.bz.3.in.a.y ntils.API
scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp *= #2000 ntils.z.const

scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp += #math.bz.3.c2 ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp *= #math.bz.3.in.t ntils.API
scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp /= #1000 ntils.z.const

execute store result score #math.bz.3.out.y ntils.API run scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp += #math.bz.3.in.a.y ntils.API

# Z --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.3.c2 ntils.z.math.bz.3.temp = #math.bz.3.in.c.z ntils.API
scoreboard players operation #math.bz.3.c2 ntils.z.math.bz.3.temp -= #math.bz.3.in.b.z ntils.API
scoreboard players operation #math.bz.3.c2 ntils.z.math.bz.3.temp -= #math.bz.3.in.b.z ntils.API
scoreboard players operation #math.bz.3.c2 ntils.z.math.bz.3.temp += #math.bz.3.in.a.z ntils.API
scoreboard players operation #math.bz.3.c2 ntils.z.math.bz.3.temp *= #math.bz.3.in.t ntils.API

scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp = #math.bz.3.in.b.z ntils.API
scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp -= #math.bz.3.in.a.z ntils.API
scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp *= #2000 ntils.z.const

scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp += #math.bz.3.c2 ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp *= #math.bz.3.in.t ntils.API
scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp /= #1000 ntils.z.const

execute store result score #math.bz.3.out.z ntils.API run scoreboard players operation #math.bz.3.c1 ntils.z.math.bz.3.temp += #math.bz.3.in.a.z ntils.API