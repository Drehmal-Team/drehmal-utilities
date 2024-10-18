# MATH/BZ/4/POINT
#
# Given a start point (a), an end point (d), control points (b) and (c), and a t value, calculates a single point along a bezier curve.
#
#   INPUT SCORES:
#
# These are the inputs for the start point. Scale them by 1000
#   #math.bz.4.in.a.x ntils.API
#   #math.bz.4.in.a.y ntils.API
#   #math.bz.4.in.a.z ntils.API
#
# These are the inputs for the first control point. Scale them by 1000
#   #math.bz.4.in.b.x ntils.API
#   #math.bz.4.in.b.y ntils.API
#   #math.bz.4.in.b.z ntils.API
#
# These are the inputs for the second control point. Scale them by 1000
#   #math.bz.4.in.c.x ntils.API
#   #math.bz.4.in.c.y ntils.API
#   #math.bz.4.in.c.z ntils.API
#
# These are the inputs for the end point. Scale them by 1000
#   #math.bz.4.in.d.x ntils.API
#   #math.bz.4.in.d.y ntils.API
#   #math.bz.4.in.d.z ntils.API
#
# This is the percent along the curve you wish to have the point at. Set to a value between 0 and 1000
#   #math.bz.4.in.t ntils.API
#
#   OUTPUT SCORES:
#
# These are the scores for the XYZ output of the current position along the bezier curve.
#   #math.bz.4.out.x ntils.API
#   #math.bz.4.out.y ntils.API
#   #math.bz.4.out.z ntils.API
#
#   ADDITIONAL OUTPUT:
#
# At ntils:api math.bz.4.out, a [double,double,double] array with the position data from above will be created, so that you can easily just set an entities position data to it.
#
# PERFORMANCE: Good. However, don't run this if you can get away with using the iterator instead.

scoreboard players operation #math.bz.4.3t ntils.z.math.bz.4.temp = #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.3t ntils.z.math.bz.4.temp *= #3 ntils.z.const

# X --------------------------------------------------------------------------------------------------------------- #

execute store result score #math.bz.4.c3 ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.out.x ntils.API = #math.bz.4.in.b.x ntils.API
scoreboard players operation #math.bz.4.out.x ntils.API -= #math.bz.4.in.a.x ntils.API

scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp = #math.bz.4.in.c.x ntils.API
scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp += #math.bz.4.in.a.x ntils.API
scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp -= #math.bz.4.in.b.x ntils.API
scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp -= #math.bz.4.in.b.x ntils.API


scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.out.x ntils.API += #math.bz.4.c2 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.x ntils.API *= #math.bz.4.3t ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp -= #math.bz.4.in.c.x ntils.API
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp *= #3 ntils.z.const
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp -= #math.bz.4.in.a.x ntils.API
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp += #math.bz.4.in.d.x ntils.API


scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp *= #math.bz.4.in.t ntils.API

scoreboard players operation #math.bz.4.out.x ntils.API += #math.bz.4.c3 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.x ntils.API /= #1000 ntils.z.const
execute store result storage ntils:api math.bz.4.out[0] double 0.001 run scoreboard players operation #math.bz.4.out.x ntils.API += #math.bz.4.in.a.x ntils.API

# Y --------------------------------------------------------------------------------------------------------------- #

execute store result score #math.bz.4.c3 ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.out.y ntils.API = #math.bz.4.in.b.y ntils.API
scoreboard players operation #math.bz.4.out.y ntils.API -= #math.bz.4.in.a.y ntils.API

scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp = #math.bz.4.in.c.y ntils.API
scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp += #math.bz.4.in.a.y ntils.API
scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp -= #math.bz.4.in.b.y ntils.API
scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp -= #math.bz.4.in.b.y ntils.API


scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.out.y ntils.API += #math.bz.4.c2 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.y ntils.API *= #math.bz.4.3t ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp -= #math.bz.4.in.c.y ntils.API
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp *= #3 ntils.z.const
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp -= #math.bz.4.in.a.y ntils.API
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp += #math.bz.4.in.d.y ntils.API


scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp *= #math.bz.4.in.t ntils.API

scoreboard players operation #math.bz.4.out.y ntils.API += #math.bz.4.c3 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.y ntils.API /= #1000 ntils.z.const
execute store result storage ntils:api math.bz.4.out[1] double 0.001 run scoreboard players operation #math.bz.4.out.y ntils.API += #math.bz.4.in.a.y ntils.API

# Z --------------------------------------------------------------------------------------------------------------- #

execute store result score #math.bz.4.c3 ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.out.z ntils.API = #math.bz.4.in.b.z ntils.API
scoreboard players operation #math.bz.4.out.z ntils.API -= #math.bz.4.in.a.z ntils.API

scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp = #math.bz.4.in.c.z ntils.API
scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp += #math.bz.4.in.a.z ntils.API
scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp -= #math.bz.4.in.b.z ntils.API
scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp -= #math.bz.4.in.b.z ntils.API


scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.c2 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.out.z ntils.API += #math.bz.4.c2 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.z ntils.API *= #math.bz.4.3t ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp -= #math.bz.4.in.c.z ntils.API
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp *= #3 ntils.z.const
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp -= #math.bz.4.in.a.z ntils.API
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp += #math.bz.4.in.d.z ntils.API


scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.c3 ntils.z.math.bz.4.temp *= #math.bz.4.in.t ntils.API

scoreboard players operation #math.bz.4.out.z ntils.API += #math.bz.4.c3 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.z ntils.API /= #1000 ntils.z.const
execute store result storage ntils:api math.bz.4.out[2] double 0.001 run scoreboard players operation #math.bz.4.out.z ntils.API += #math.bz.4.in.a.z ntils.API