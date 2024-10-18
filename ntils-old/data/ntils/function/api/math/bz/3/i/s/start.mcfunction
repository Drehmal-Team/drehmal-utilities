# MATH/BZ/3/I/S/START
#
# Given a start point (a), an end point (c), a single control point (b), and an amount of iteration steps, begin a bezier iteration.
# Once an iteration has been started, calling math/bz/3/i/s/loop will perform one iteration along the bezier curve. Once the amount of iterations becomes equal to
# the starting iteration count value, the entire curve will have been traversed.
#
# WARNING: This iteration method has to contend with scoreboard precision! As such, it has two fail cases: An iteration count that is too low (causes scoreboard overflows and makes a curve that veers wildly), or an iteration count that is too high (makes for compounding precision loss. as an example, a curve with 100 given iterations will end up closer to its target than one with 1000). A good rule of thumb is that the iteration count should be no lower than 2/3rds of the distance between the A and C points in blocks. So, for 30 blocks of distance, iteration count >20.
# Given this, don't use this for any situation which would produce either eventuality.
#
# This uses entity scores on @s. Starting another iteration on this same entity will overwrite this one.
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

scoreboard players operation #m.x ntils.z.math.bz.3.temp = #math.bz.3.in.c.x ntils.API
scoreboard players operation #o.x ntils.z.math.bz.3.temp = #math.bz.3.in.b.x ntils.API
scoreboard players operation #o.x ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #m.x ntils.z.math.bz.3.temp -= #o.x ntils.z.math.bz.3.temp
scoreboard players operation #m.x ntils.z.math.bz.3.temp += #math.bz.3.in.a.x ntils.API
scoreboard players operation #m.x ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #m.x ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API
scoreboard players operation #m.x ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API

scoreboard players operation #2a.x ntils.z.math.bz.3.temp = #math.bz.3.in.a.x ntils.API
scoreboard players operation #2a.x ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #o.x ntils.z.math.bz.3.temp -= #2a.x ntils.z.math.bz.3.temp
scoreboard players operation #o.x ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #o.x ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API

execute store result score @s ntils.z.math.bz.3.i.vec_s.x store result score @s ntils.z.math.bz.3.i.vec.x run scoreboard players operation #o.x ntils.z.math.bz.3.temp += #m.x ntils.z.math.bz.3.temp
execute store result score @s ntils.z.math.bz.3.i.accel.x run scoreboard players operation #m.x ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation @s ntils.z.math.bz.3.i.vec_s.x /= #1000 ntils.z.const

scoreboard players operation #m.y ntils.z.math.bz.3.temp = #math.bz.3.in.c.y ntils.API
scoreboard players operation #o.y ntils.z.math.bz.3.temp = #math.bz.3.in.b.y ntils.API
scoreboard players operation #o.y ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #m.y ntils.z.math.bz.3.temp -= #o.y ntils.z.math.bz.3.temp
scoreboard players operation #m.y ntils.z.math.bz.3.temp += #math.bz.3.in.a.y ntils.API
scoreboard players operation #m.y ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #m.y ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API
scoreboard players operation #m.y ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API

scoreboard players operation #2a.y ntils.z.math.bz.3.temp = #math.bz.3.in.a.y ntils.API
scoreboard players operation #2a.y ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #o.y ntils.z.math.bz.3.temp -= #2a.y ntils.z.math.bz.3.temp
scoreboard players operation #o.y ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #o.y ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API

execute store result score @s ntils.z.math.bz.3.i.vec_s.y store result score @s ntils.z.math.bz.3.i.vec.y run scoreboard players operation #o.y ntils.z.math.bz.3.temp += #m.y ntils.z.math.bz.3.temp
execute store result score @s ntils.z.math.bz.3.i.accel.y run scoreboard players operation #m.y ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation @s ntils.z.math.bz.3.i.vec_s.y /= #1000 ntils.z.const

scoreboard players operation #m.z ntils.z.math.bz.3.temp = #math.bz.3.in.c.z ntils.API
scoreboard players operation #o.z ntils.z.math.bz.3.temp = #math.bz.3.in.b.z ntils.API
scoreboard players operation #o.z ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #m.z ntils.z.math.bz.3.temp -= #o.z ntils.z.math.bz.3.temp
scoreboard players operation #m.z ntils.z.math.bz.3.temp += #math.bz.3.in.a.z ntils.API
scoreboard players operation #m.z ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #m.z ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API
scoreboard players operation #m.z ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API

scoreboard players operation #2a.z ntils.z.math.bz.3.temp = #math.bz.3.in.a.z ntils.API
scoreboard players operation #2a.z ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #o.z ntils.z.math.bz.3.temp -= #2a.z ntils.z.math.bz.3.temp
scoreboard players operation #o.z ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #o.z ntils.z.math.bz.3.temp /= #math.bz.3.in.iterations ntils.API

execute store result score @s ntils.z.math.bz.3.i.vec_s.z store result score @s ntils.z.math.bz.3.i.vec.z run scoreboard players operation #o.z ntils.z.math.bz.3.temp += #m.z ntils.z.math.bz.3.temp
execute store result score @s ntils.z.math.bz.3.i.accel.z run scoreboard players operation #m.z ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation @s ntils.z.math.bz.3.i.vec_s.z /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.3.out[0] double 0.001 store result score #math.bz.3.out.x ntils.API run scoreboard players operation @s ntils.z.math.bz.3.i.base.x = #math.bz.3.in.a.x ntils.API
execute store result storage ntils:api math.bz.3.out[1] double 0.001 store result score #math.bz.3.out.y ntils.API run scoreboard players operation @s ntils.z.math.bz.3.i.base.y = #math.bz.3.in.a.y ntils.API
execute store result storage ntils:api math.bz.3.out[2] double 0.001 store result score #math.bz.3.out.z ntils.API run scoreboard players operation @s ntils.z.math.bz.3.i.base.z = #math.bz.3.in.a.z ntils.API