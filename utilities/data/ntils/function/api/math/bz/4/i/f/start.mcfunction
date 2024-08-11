# MATH/BZ/3/I/S/START
#
# Given a start point (a), an end point (d), amd two control points (b) and (c), and an amount of iteration steps, begin a beizer iteration.
# Once an iteration has been started, calling math/bz/4/i/s/loop will perform one iteration along the beizer curve. Once the amount of iterations becomes equal to
# the starting iteration count value, the entire curve will have been traversed.
#
# This uses entity scores on @s. Starting another iteration on this same entity will overwrite this one.
#
#   INPUT SCORES:
#
# These are the inputs for the start point. Scale them by 1000
#   #math.bz.4.i.in.a.x ntils.API
#   #math.bz.4.i.in.a.y ntils.API
#   #math.bz.4.i.in.a.z ntils.API
#
# These are the inputs for the first control point. Scale them by 1000
#   #math.bz.4.i.in.b.x ntils.API
#   #math.bz.4.i.in.b.y ntils.API
#   #math.bz.4.i.in.b.z ntils.API
#
# These are the inputs for the second control point. Scale them by 1000
#   #math.bz.4.i.in.c.x ntils.API
#   #math.bz.4.i.in.c.y ntils.API
#   #math.bz.4.i.in.c.z ntils.API
#
# These are the inputs for the end point. Scale them by 1000
#   #math.bz.4.i.in.d.x ntils.API
#   #math.bz.4.i.in.d.y ntils.API
#   #math.bz.4.i.in.d.z ntils.API
#
# This is the amount of iterations you want to perform, or in other terms, the amount of times the loop function will need to be called to complete the curve.
#   #math.bz.4.i.in.iterations ntils.API
#
#   OUTPUT SCORES:
#
# These are the scores for the XYZ output of the current position along the beizer curve.
#   #math.bz.4.i.out.x ntils.API
#   #math.bz.4.i.out.y ntils.API
#   #math.bz.4.i.out.z ntils.API
#
#   ADDITIONAL OUTPUT:
#
# At ntils:api math.bz.4.i.out, a [double,double,double] array with the position data from above will be created, so that you can easily just set an entities position data to it.
#
# PERFORMANCE: Good. Much more expensive than the 3 point version.

scoreboard players operation #math.bz.4.i.s^2 ntils.z.math.bz.4.temp = #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.s^2 ntils.z.math.bz.4.temp *= #math.bz.4.i.in.iterations ntils.API

# X --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.4.i.n ntils.z.math.bz.4.temp = #math.bz.4.i.in.a.x ntils.API
scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp = #math.bz.4.i.in.b.x ntils.API
scoreboard players operation #math.bz.4.i.j ntils.z.math.bz.4.temp = #math.bz.4.i.in.c.x ntils.API

scoreboard players operation #math.bz.4.i.n ntils.z.math.bz.4.temp *= #3 ntils.z.const

execute store result score #math.bz.4.i.2h ntils.z.math.bz.4.temp store result score #math.bz.4.i.q ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp *= #3 ntils.z.const
scoreboard players operation #math.bz.4.i.2h ntils.z.math.bz.4.temp *= #2 ntils.z.const

execute store result score #math.bz.4.i.z ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.j ntils.z.math.bz.4.temp *= #3 ntils.z.const

scoreboard players operation #math.bz.4.i.z ntils.z.math.bz.4.temp -= #math.bz.4.i.2h ntils.z.math.bz.4.temp
execute store result score #math.bz.4.i.2z ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.z ntils.z.math.bz.4.temp += #math.bz.4.i.n ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp -= #math.bz.4.i.in.a.x ntils.API
scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp += #math.bz.4.i.in.d.x ntils.API
execute store result score #math.bz.4.i.o ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp -= #math.bz.4.i.j ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp *= #6 ntils.z.const
scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp *= #1000 ntils.z.const
execute store result score #math.bz.4.i.jerk.x ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API

scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp *= #2 ntils.z.const
scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
execute store result score #math.bz.4.i.accel.x ntils.z.math.bz.4.temp store result score #math.bz.4.i.accel_s.x ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp += #math.bz.4.i.o ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp -= #math.bz.4.i.n ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp *= #1000 ntils.z.const

scoreboard players operation #math.bz.4.i.z ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.z ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API

scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp += #math.bz.4.i.z ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp /= #math.bz.4.i.s^2 ntils.z.math.bz.4.temp

execute store result score #math.bz.4.i.vec.x ntils.z.math.bz.4.temp store result score #math.bz.4.i.vec_s.x ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp += #math.bz.4.i.q ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.i.vec_s.x ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.accel_s.x ntils.z.math.bz.4.temp /= #1000 ntils.z.const

# Y --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.4.i.n ntils.z.math.bz.4.temp = #math.bz.4.i.in.a.y ntils.API
scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp = #math.bz.4.i.in.b.y ntils.API
scoreboard players operation #math.bz.4.i.j ntils.z.math.bz.4.temp = #math.bz.4.i.in.c.y ntils.API

scoreboard players operation #math.bz.4.i.n ntils.z.math.bz.4.temp *= #3 ntils.z.const

execute store result score #math.bz.4.i.2h ntils.z.math.bz.4.temp store result score #math.bz.4.i.q ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp *= #3 ntils.z.const
scoreboard players operation #math.bz.4.i.2h ntils.z.math.bz.4.temp *= #2 ntils.z.const

execute store result score #math.bz.4.i.z ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.j ntils.z.math.bz.4.temp *= #3 ntils.z.const

scoreboard players operation #math.bz.4.i.z ntils.z.math.bz.4.temp -= #math.bz.4.i.2h ntils.z.math.bz.4.temp
execute store result score #math.bz.4.i.2z ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.z ntils.z.math.bz.4.temp += #math.bz.4.i.n ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp -= #math.bz.4.i.in.a.y ntils.API
scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp += #math.bz.4.i.in.d.y ntils.API
execute store result score #math.bz.4.i.o ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp -= #math.bz.4.i.j ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp *= #6 ntils.z.const
scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp *= #1000 ntils.z.const
execute store result score #math.bz.4.i.jerk.y ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API

scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp *= #2 ntils.z.const
scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
execute store result score #math.bz.4.i.accel.y ntils.z.math.bz.4.temp store result score #math.bz.4.i.accel_s.y ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp += #math.bz.4.i.o ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp -= #math.bz.4.i.n ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp *= #1000 ntils.z.const

scoreboard players operation #math.bz.4.i.z ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.z ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API

scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp += #math.bz.4.i.z ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp /= #math.bz.4.i.s^2 ntils.z.math.bz.4.temp

execute store result score #math.bz.4.i.vec.y ntils.z.math.bz.4.temp store result score #math.bz.4.i.vec_s.y ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp += #math.bz.4.i.q ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.i.vec_s.y ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.accel_s.y ntils.z.math.bz.4.temp /= #1000 ntils.z.const

# Z --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.4.i.n ntils.z.math.bz.4.temp = #math.bz.4.i.in.a.z ntils.API
scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp = #math.bz.4.i.in.b.z ntils.API
scoreboard players operation #math.bz.4.i.j ntils.z.math.bz.4.temp = #math.bz.4.i.in.c.z ntils.API

scoreboard players operation #math.bz.4.i.n ntils.z.math.bz.4.temp *= #3 ntils.z.const

execute store result score #math.bz.4.i.2h ntils.z.math.bz.4.temp store result score #math.bz.4.i.q ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp *= #3 ntils.z.const
scoreboard players operation #math.bz.4.i.2h ntils.z.math.bz.4.temp *= #2 ntils.z.const

execute store result score #math.bz.4.i.z ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.j ntils.z.math.bz.4.temp *= #3 ntils.z.const

scoreboard players operation #math.bz.4.i.z ntils.z.math.bz.4.temp -= #math.bz.4.i.2h ntils.z.math.bz.4.temp
execute store result score #math.bz.4.i.2z ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.z ntils.z.math.bz.4.temp += #math.bz.4.i.n ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp -= #math.bz.4.i.in.a.z ntils.API
scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp += #math.bz.4.i.in.d.z ntils.API
execute store result score #math.bz.4.i.o ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp -= #math.bz.4.i.j ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp *= #6 ntils.z.const
scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp *= #1000 ntils.z.const
execute store result score #math.bz.4.i.jerk.z ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.o ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API

scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp *= #2 ntils.z.const
scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
execute store result score #math.bz.4.i.accel.z ntils.z.math.bz.4.temp store result score #math.bz.4.i.accel_s.z ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.2z ntils.z.math.bz.4.temp += #math.bz.4.i.o ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp -= #math.bz.4.i.n ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp *= #1000 ntils.z.const

scoreboard players operation #math.bz.4.i.z ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.z ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API

scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp += #math.bz.4.i.z ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp /= #math.bz.4.i.in.iterations ntils.API
scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.q ntils.z.math.bz.4.temp /= #math.bz.4.i.s^2 ntils.z.math.bz.4.temp

execute store result score #math.bz.4.i.vec.z ntils.z.math.bz.4.temp store result score #math.bz.4.i.vec_s.z ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.h ntils.z.math.bz.4.temp += #math.bz.4.i.q ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.i.vec_s.z ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.accel_s.z ntils.z.math.bz.4.temp /= #1000 ntils.z.const

# END --------------------------------------------------------------------------------------------------------------- #

execute store result storage ntils:api math.bz.4.i.out[0] double 0.001 store result score #math.bz.4.i.out.x ntils.API run scoreboard players operation #math.bz.4.i.base.x ntils.z.math.bz.4.temp = #math.bz.4.i.in.a.x ntils.API
execute store result storage ntils:api math.bz.4.i.out[1] double 0.001 store result score #math.bz.4.i.out.y ntils.API run scoreboard players operation #math.bz.4.i.base.y ntils.z.math.bz.4.temp = #math.bz.4.i.in.a.y ntils.API
execute store result storage ntils:api math.bz.4.i.out[2] double 0.001 store result score #math.bz.4.i.out.z ntils.API run scoreboard players operation #math.bz.4.i.base.z ntils.z.math.bz.4.temp = #math.bz.4.i.in.a.z ntils.API