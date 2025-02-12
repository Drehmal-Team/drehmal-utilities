# MATH/BZ/4/POINT
#
#   Given a start point (a), an end point (c), two control points (b) and (c), and a t value, calculates a single point along a bezier curve.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.4.in.a.[x,y,z] ntils.API (3)     <- Inputs for the starting point.
#       | #math.bz.4.in.b.[x,y,z] ntils.API (3)     <- Inputs for the first control point.
#       | #math.bz.4.in.c.[x,y,z] ntils.API (3)     <- Inputs for the second control point.
#       | #math.bz.4.in.d.[x,y,z] ntils.API (3)     <- Inputs for the end point.
#       | #math.bz.4.in.t ntils.API                 <- Value of the parameter t used to calculate the point. 0..1000 range.
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.4.out.[x,y,z] ntils.API (3)
#   > Storage:
#       | ntils:api math.bz.4.out, double list (3)
#
# PERFORMANCE: Okay
#   Don't run this if you can get away with using either iterator. Only faster if you need exactly one point, for whatever reason.

# X --------------------------------------------------------------------------------------------------------------- #

execute store result score #b-a ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.out.x ntils.API = #math.bz.4.in.b.x ntils.API
execute store result score #b-c ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.out.x ntils.API -= #math.bz.4.in.c.x ntils.API
scoreboard players operation #math.bz.4.out.x ntils.API *= #3 ntils.z.const
scoreboard players operation #math.bz.4.out.x ntils.API -= #math.bz.4.in.a.x ntils.API
scoreboard players operation #math.bz.4.out.x ntils.API += #math.bz.4.in.d.x ntils.API

scoreboard players operation #math.bz.4.out.x ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.x ntils.API /= #1000 ntils.z.const

scoreboard players operation #b-a ntils.z.math.bz.4.temp -= #math.bz.4.in.a.x ntils.API
scoreboard players operation #b-c ntils.z.math.bz.4.temp += #b-a ntils.z.math.bz.4.temp
scoreboard players operation #b-c ntils.z.math.bz.4.temp *= #-3 ntils.z.const

scoreboard players operation #math.bz.4.out.x ntils.API += #b-c ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.x ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.x ntils.API /= #1000 ntils.z.const

scoreboard players operation #b-a ntils.z.math.bz.4.temp *= #3 ntils.z.const

scoreboard players operation #math.bz.4.out.x ntils.API += #b-a ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.x ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.x ntils.API /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.4.out[0] double 0.001 run scoreboard players operation #math.bz.4.out.x ntils.API += #math.bz.4.in.a.x ntils.API

# Y --------------------------------------------------------------------------------------------------------------- #

execute store result score #b-a ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.out.y ntils.API = #math.bz.4.in.b.y ntils.API
execute store result score #b-c ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.out.y ntils.API -= #math.bz.4.in.c.y ntils.API
scoreboard players operation #math.bz.4.out.y ntils.API *= #3 ntils.z.const
scoreboard players operation #math.bz.4.out.y ntils.API -= #math.bz.4.in.a.y ntils.API
scoreboard players operation #math.bz.4.out.y ntils.API += #math.bz.4.in.d.y ntils.API

scoreboard players operation #math.bz.4.out.y ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.y ntils.API /= #1000 ntils.z.const

scoreboard players operation #b-a ntils.z.math.bz.4.temp -= #math.bz.4.in.a.y ntils.API
scoreboard players operation #b-c ntils.z.math.bz.4.temp += #b-a ntils.z.math.bz.4.temp
scoreboard players operation #b-c ntils.z.math.bz.4.temp *= #-3 ntils.z.const

scoreboard players operation #math.bz.4.out.y ntils.API += #b-c ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.y ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.y ntils.API /= #1000 ntils.z.const

scoreboard players operation #b-a ntils.z.math.bz.4.temp *= #3 ntils.z.const

scoreboard players operation #math.bz.4.out.y ntils.API += #b-a ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.y ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.y ntils.API /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.4.out[1] double 0.001 run scoreboard players operation #math.bz.4.out.y ntils.API += #math.bz.4.in.a.y ntils.API

# Z --------------------------------------------------------------------------------------------------------------- #

execute store result score #b-a ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.out.z ntils.API = #math.bz.4.in.b.z ntils.API
execute store result score #b-c ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.out.z ntils.API -= #math.bz.4.in.c.z ntils.API
scoreboard players operation #math.bz.4.out.z ntils.API *= #3 ntils.z.const
scoreboard players operation #math.bz.4.out.z ntils.API -= #math.bz.4.in.a.z ntils.API
scoreboard players operation #math.bz.4.out.z ntils.API += #math.bz.4.in.d.z ntils.API

scoreboard players operation #math.bz.4.out.z ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.z ntils.API /= #1000 ntils.z.const

scoreboard players operation #b-a ntils.z.math.bz.4.temp -= #math.bz.4.in.a.z ntils.API
scoreboard players operation #b-c ntils.z.math.bz.4.temp += #b-a ntils.z.math.bz.4.temp
scoreboard players operation #b-c ntils.z.math.bz.4.temp *= #-3 ntils.z.const

scoreboard players operation #math.bz.4.out.z ntils.API += #b-c ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.z ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.z ntils.API /= #1000 ntils.z.const

scoreboard players operation #b-a ntils.z.math.bz.4.temp *= #3 ntils.z.const

scoreboard players operation #math.bz.4.out.z ntils.API += #b-a ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.z ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.z ntils.API /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.4.out[2] double 0.001 run scoreboard players operation #math.bz.4.out.z ntils.API += #math.bz.4.in.a.z ntils.API