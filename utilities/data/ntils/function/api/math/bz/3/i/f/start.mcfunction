# MATH/BZ/3/I/START
#
# Given a start point (a), an end point (c), a single control point (b), and an amount of iteration steps, begin a bezier iteration.
# Once an iteration has been started, calling math/bz/3/i/f/loop will perform one iteration along the bezier curve. Once the amount of iterations becomes equal to
# the starting iteration count value, the entire curve will have been traversed.
#
# This uses fake player scores, and as such starting another bezier iteration will overwrite this one.
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
#   #math.bz.3.in.c.x ntils.API
#   #math.bz.3.in.c.y ntils.API
#   #math.bz.3.in.c.z ntils.API
#
# This is the amount of iterations you want to perform, or in other terms, the amount of times the loop function will need to be called to complete the curve.
#   #math.bz.3.in.iterations ntils.API
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
# PERFORMANCE: Great. It's a healthy amount of scoreboard operations, but it's ultimately just scores.

scoreboard players operation #math.bz.3.i.m.x ntils.z.math.bz.3.temp = #math.bz.3.in.c.x ntils.API
scoreboard players operation #math.bz.3.i.o.x ntils.z.math.bz.3.temp = #math.bz.3.in.b.x ntils.API
scoreboard players operation #math.bz.3.i.o.x ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.3.i.m.x ntils.z.math.bz.3.temp -= #math.bz.3.i.o.x ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.i.m.x ntils.z.math.bz.3.temp += #math.bz.3.in.a.x ntils.API
scoreboard players operation #math.bz.3.i.m.x ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.3.i.m.x ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API
scoreboard players operation #math.bz.3.i.m.x ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API

scoreboard players operation #math.bz.3.i.2a.x ntils.z.math.bz.3.temp = #math.bz.3.in.a.x ntils.API
scoreboard players operation #math.bz.3.i.2a.x ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.3.i.o.x ntils.z.math.bz.3.temp -= #math.bz.3.i.2a.x ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.i.o.x ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.3.i.o.x ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API

execute store result score #math.bz.3.i.vec_s.x ntils.z.math.bz.3.temp store result score #math.bz.3.i.vec.x ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.i.o.x ntils.z.math.bz.3.temp += #math.bz.3.i.m.x ntils.z.math.bz.3.temp
execute store result score #math.bz.3.i.accel.x ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.i.m.x ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.3.i.vec_s.x ntils.z.math.bz.3.temp /= #1000 ntils.z.const

scoreboard players operation #math.bz.3.i.m.y ntils.z.math.bz.3.temp = #math.bz.3.in.c.y ntils.API
scoreboard players operation #math.bz.3.i.o.y ntils.z.math.bz.3.temp = #math.bz.3.in.b.y ntils.API
scoreboard players operation #math.bz.3.i.o.y ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.3.i.m.y ntils.z.math.bz.3.temp -= #math.bz.3.i.o.y ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.i.m.y ntils.z.math.bz.3.temp += #math.bz.3.in.a.y ntils.API
scoreboard players operation #math.bz.3.i.m.y ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.3.i.m.y ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API
scoreboard players operation #math.bz.3.i.m.y ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API

scoreboard players operation #math.bz.3.i.2a.y ntils.z.math.bz.3.temp = #math.bz.3.in.a.y ntils.API
scoreboard players operation #math.bz.3.i.2a.y ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.3.i.o.y ntils.z.math.bz.3.temp -= #math.bz.3.i.2a.y ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.i.o.y ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.3.i.o.y ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API

execute store result score #math.bz.3.i.vec_s.y ntils.z.math.bz.3.temp store result score #math.bz.3.i.vec.y ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.i.o.y ntils.z.math.bz.3.temp += #math.bz.3.i.m.y ntils.z.math.bz.3.temp
execute store result score #math.bz.3.i.accel.y ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.i.m.y ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.3.i.vec_s.y ntils.z.math.bz.3.temp /= #1000 ntils.z.const

scoreboard players operation #math.bz.3.i.m.z ntils.z.math.bz.3.temp = #math.bz.3.in.c.z ntils.API
scoreboard players operation #math.bz.3.i.o.z ntils.z.math.bz.3.temp = #math.bz.3.in.b.z ntils.API
scoreboard players operation #math.bz.3.i.o.z ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.3.i.m.z ntils.z.math.bz.3.temp -= #math.bz.3.i.o.z ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.i.m.z ntils.z.math.bz.3.temp += #math.bz.3.in.a.z ntils.API
scoreboard players operation #math.bz.3.i.m.z ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.3.i.m.z ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API
scoreboard players operation #math.bz.3.i.m.z ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API

scoreboard players operation #math.bz.3.i.2a.z ntils.z.math.bz.3.temp = #math.bz.3.in.a.z ntils.API
scoreboard players operation #math.bz.3.i.2a.z ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.3.i.o.z ntils.z.math.bz.3.temp -= #math.bz.3.i.2a.z ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.i.o.z ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.3.i.o.z ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API

execute store result score #math.bz.3.i.vec_s.z ntils.z.math.bz.3.temp store result score #math.bz.3.i.vec.z ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.i.o.z ntils.z.math.bz.3.temp += #math.bz.3.i.m.z ntils.z.math.bz.3.temp
execute store result score #math.bz.3.i.accel.z ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.i.m.z ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.3.i.vec_s.z ntils.z.math.bz.3.temp /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.3.out[0] double 0.001 store result score #math.bz.3.out.x ntils.API run scoreboard players operation #math.bz.3.i.base.x ntils.z.math.bz.3.temp = #math.bz.3.in.a.x ntils.API
execute store result storage ntils:api math.bz.3.out[1] double 0.001 store result score #math.bz.3.out.y ntils.API run scoreboard players operation #math.bz.3.i.base.y ntils.z.math.bz.3.temp = #math.bz.3.in.a.y ntils.API
execute store result storage ntils:api math.bz.3.out[2] double 0.001 store result score #math.bz.3.out.z ntils.API run scoreboard players operation #math.bz.3.i.base.z ntils.z.math.bz.3.temp = #math.bz.3.in.a.z ntils.API