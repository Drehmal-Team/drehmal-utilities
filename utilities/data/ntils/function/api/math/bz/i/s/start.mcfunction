# MATH/BZ/I/S/START
#
# Given a start point (a), an end point (c), a single control point (b), and an amount of iteration step, begins a beizer iteration.
# Once an iteration has been started, calling math/bz/f/loop will perform one iteration along the beizer curve. Once the amount of iterations becomes equal to
# the starting iteration count value, the entire curve will have been traversed.
#
# This uses entity scores on @s. Starting another iteration on this same entity will overwrite this one.
#
#   INPUT SCORES:
#
# These are the inputs for the start point. Scale them by 1000
#   #math.bz.i.in.a.x ntils.API
#   #math.bz.i.in.a.y ntils.API
#   #math.bz.i.in.a.z ntils.API
#
# These are the inputs for the control point. Scale them by 1000
#   #math.bz.i.in.b.x ntils.API
#   #math.bz.i.in.b.y ntils.API
#   #math.bz.i.in.b.z ntils.API
#
# These are the inputs for the end point. Scale them by 1000
#   #math.bz.i.in.c.x ntils.API
#   #math.bz.i.in.c.y ntils.API
#   #math.bz.i.in.c.z ntils.API
#
# This is the amount of iterations you want to perform, or in other terms, the amount of times the loop function will need to be called to complete the curve.
#   #math.bz.i.in.iterations ntils.API
#
#   OUTPUT SCORES:
#
# These are the scores for the XYZ output of the current position along the beizer curve.
#   #math.bz.i.out.x ntils.API
#   #math.bz.i.out.y ntils.API
#   #math.bz.i.out.z ntils.API
#
#   ADDITIONAL OUTPUT:
#
# At ntils:api math.bz.i.out, a [double,double,double] array with the position data from above will be created, so that you can easily just set an entities position data to it.
#
# PERFORMANCE: Great. It's a healthy amount of scoreboard operations, but it's ultimately just scores.

scoreboard players operation #math.bz.i.m.x ntils.z.temp = #math.bz.i.in.c.x ntils.API
scoreboard players operation #math.bz.i.o.x ntils.z.temp = #math.bz.i.in.b.x ntils.API
scoreboard players operation #math.bz.i.o.x ntils.z.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.i.m.x ntils.z.temp -= #math.bz.i.o.x ntils.z.temp
scoreboard players operation #math.bz.i.m.x ntils.z.temp += #math.bz.i.in.a.x ntils.API
scoreboard players operation #math.bz.i.m.x ntils.z.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.i.m.x ntils.z.temp /= #math.bz.i.in.iterations ntils.API
scoreboard players operation #math.bz.i.m.x ntils.z.temp /= #math.bz.i.in.iterations ntils.API

scoreboard players operation #math.bz.i.2a.x ntils.z.temp = #math.bz.i.in.a.x ntils.API
scoreboard players operation #math.bz.i.2a.x ntils.z.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.i.o.x ntils.z.temp -= #math.bz.i.2a.x ntils.z.temp
scoreboard players operation #math.bz.i.o.x ntils.z.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.i.o.x ntils.z.temp /= #math.bz.i.in.iterations ntils.API

execute store result score @s ntils.z.math.bz.i.vec_s.x store result score @s ntils.z.math.bz.i.vec.x run scoreboard players operation #math.bz.i.o.x ntils.z.temp += #math.bz.i.m.x ntils.z.temp
execute store result score @s ntils.z.math.bz.i.accel.x run scoreboard players operation #math.bz.i.m.x ntils.z.temp *= #2 ntils.z.const

scoreboard players operation @s ntils.z.math.bz.i.vec_s.x /= #1000 ntils.z.const

scoreboard players operation #math.bz.i.m.y ntils.z.temp = #math.bz.i.in.c.y ntils.API
scoreboard players operation #math.bz.i.o.y ntils.z.temp = #math.bz.i.in.b.y ntils.API
scoreboard players operation #math.bz.i.o.y ntils.z.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.i.m.y ntils.z.temp -= #math.bz.i.o.y ntils.z.temp
scoreboard players operation #math.bz.i.m.y ntils.z.temp += #math.bz.i.in.a.y ntils.API
scoreboard players operation #math.bz.i.m.y ntils.z.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.i.m.y ntils.z.temp /= #math.bz.i.in.iterations ntils.API
scoreboard players operation #math.bz.i.m.y ntils.z.temp /= #math.bz.i.in.iterations ntils.API

scoreboard players operation #math.bz.i.2a.y ntils.z.temp = #math.bz.i.in.a.y ntils.API
scoreboard players operation #math.bz.i.2a.y ntils.z.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.i.o.y ntils.z.temp -= #math.bz.i.2a.y ntils.z.temp
scoreboard players operation #math.bz.i.o.y ntils.z.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.i.o.y ntils.z.temp /= #math.bz.i.in.iterations ntils.API

execute store result score @s ntils.z.math.bz.i.vec_s.y store result score @s ntils.z.math.bz.i.vec.y run scoreboard players operation #math.bz.i.o.y ntils.z.temp += #math.bz.i.m.y ntils.z.temp
execute store result score @s ntils.z.math.bz.i.accel.y run scoreboard players operation #math.bz.i.m.y ntils.z.temp *= #2 ntils.z.const

scoreboard players operation @s ntils.z.math.bz.i.vec_s.y /= #1000 ntils.z.const

scoreboard players operation #math.bz.i.m.z ntils.z.temp = #math.bz.i.in.c.z ntils.API
scoreboard players operation #math.bz.i.o.z ntils.z.temp = #math.bz.i.in.b.z ntils.API
scoreboard players operation #math.bz.i.o.z ntils.z.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.i.m.z ntils.z.temp -= #math.bz.i.o.z ntils.z.temp
scoreboard players operation #math.bz.i.m.z ntils.z.temp += #math.bz.i.in.a.z ntils.API
scoreboard players operation #math.bz.i.m.z ntils.z.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.i.m.z ntils.z.temp /= #math.bz.i.in.iterations ntils.API
scoreboard players operation #math.bz.i.m.z ntils.z.temp /= #math.bz.i.in.iterations ntils.API

scoreboard players operation #math.bz.i.2a.z ntils.z.temp = #math.bz.i.in.a.z ntils.API
scoreboard players operation #math.bz.i.2a.z ntils.z.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.i.o.z ntils.z.temp -= #math.bz.i.2a.z ntils.z.temp
scoreboard players operation #math.bz.i.o.z ntils.z.temp *= #1000 ntils.z.const
scoreboard players operation #math.bz.i.o.z ntils.z.temp /= #math.bz.i.in.iterations ntils.API

execute store result score @s ntils.z.math.bz.i.vec_s.z store result score @s ntils.z.math.bz.i.vec.z run scoreboard players operation #math.bz.i.o.z ntils.z.temp += #math.bz.i.m.z ntils.z.temp
execute store result score @s ntils.z.math.bz.i.accel.z run scoreboard players operation #math.bz.i.m.z ntils.z.temp *= #2 ntils.z.const

scoreboard players operation @s ntils.z.math.bz.i.vec_s.z /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.i.out[0] double 0.001 store result score #math.bz.i.out.x ntils.API run scoreboard players operation @s ntils.z.math.bz.i.base.x = #math.bz.i.in.a.x ntils.API
execute store result storage ntils:api math.bz.i.out[1] double 0.001 store result score #math.bz.i.out.y ntils.API run scoreboard players operation @s ntils.z.math.bz.i.base.y = #math.bz.i.in.a.y ntils.API
execute store result storage ntils:api math.bz.i.out[2] double 0.001 store result score #math.bz.i.out.z ntils.API run scoreboard players operation @s ntils.z.math.bz.i.base.z = #math.bz.i.in.a.z ntils.API