# MATH/BZ/3/POINT
#
#   Given a start point (a), an end point (c), a control point (b), and a t value, calculates a single point along a bezier curve.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.3.in.a.[x,y,z] ntils.API (3)     <- Inputs for the starting point.
#       | #math.bz.3.in.b.[x,y,z] ntils.API (3)     <- Inputs for the control point.
#       | #math.bz.3.in.c.[x,y,z] ntils.API (3)     <- Inputs for the end point.
#       | #math.bz.3.in.t ntils.API                 <- Value of the parameter t used to calculate the point. 0..1000 range.
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.3.out.[x,y,z] ntils.API (3)
#   > Storage:
#       | ntils:api math.bz.3.out, double list (3)
#
# PERFORMANCE: Good
#   Don't run this if you can get away with using the iterator instead.

# Y --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.3.out.x ntils.API = #math.bz.3.in.a.x ntils.API
execute store result score #a-b ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.out.x ntils.API -= #math.bz.3.in.b.x ntils.API
scoreboard players operation #math.bz.3.out.x ntils.API -= #math.bz.3.in.b.x ntils.API
scoreboard players operation #math.bz.3.out.x ntils.API += #math.bz.3.in.c.x ntils.API

scoreboard players operation #math.bz.3.out.x ntils.API *= #math.bz.3.in.t ntils.API
scoreboard players operation #math.bz.3.out.x ntils.API /= #1000 ntils.z.const

scoreboard players operation #a-b ntils.z.math.bz.3.temp *= #2 ntils.z.const
scoreboard players operation #math.bz.3.out.x ntils.API -= #a-b ntils.z.math.bz.3.temp

scoreboard players operation #math.bz.3.out.x ntils.API *= #math.bz.3.in.t ntils.API
scoreboard players operation #math.bz.3.out.x ntils.API /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.3.out[0] double 0.001 run scoreboard players operation #math.bz.3.out.x ntils.API += #math.bz.3.in.a.x ntils.API

# Y --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.3.out.y ntils.API = #math.bz.3.in.a.y ntils.API
execute store result score #a-b ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.out.y ntils.API -= #math.bz.3.in.b.y ntils.API
scoreboard players operation #math.bz.3.out.y ntils.API -= #math.bz.3.in.b.y ntils.API
scoreboard players operation #math.bz.3.out.y ntils.API += #math.bz.3.in.c.y ntils.API

scoreboard players operation #math.bz.3.out.y ntils.API *= #math.bz.3.in.t ntils.API
scoreboard players operation #math.bz.3.out.y ntils.API /= #1000 ntils.z.const

scoreboard players operation #a-b ntils.z.math.bz.3.temp *= #2 ntils.z.const
scoreboard players operation #math.bz.3.out.y ntils.API -= #a-b ntils.z.math.bz.3.temp

scoreboard players operation #math.bz.3.out.y ntils.API *= #math.bz.3.in.t ntils.API
scoreboard players operation #math.bz.3.out.y ntils.API /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.3.out[1] double 0.001 run scoreboard players operation #math.bz.3.out.y ntils.API += #math.bz.3.in.a.y ntils.API

# Z --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.3.out.z ntils.API = #math.bz.3.in.a.z ntils.API
execute store result score #a-b ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.out.z ntils.API -= #math.bz.3.in.b.z ntils.API
scoreboard players operation #math.bz.3.out.z ntils.API -= #math.bz.3.in.b.z ntils.API
scoreboard players operation #math.bz.3.out.z ntils.API += #math.bz.3.in.c.z ntils.API

scoreboard players operation #math.bz.3.out.z ntils.API *= #math.bz.3.in.t ntils.API
scoreboard players operation #math.bz.3.out.z ntils.API /= #1000 ntils.z.const

scoreboard players operation #a-b ntils.z.math.bz.3.temp *= #2 ntils.z.const
scoreboard players operation #math.bz.3.out.z ntils.API -= #a-b ntils.z.math.bz.3.temp

scoreboard players operation #math.bz.3.out.z ntils.API *= #math.bz.3.in.t ntils.API
scoreboard players operation #math.bz.3.out.z ntils.API /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.3.out[2] double 0.001 run scoreboard players operation #math.bz.3.out.z ntils.API += #math.bz.3.in.a.z ntils.API