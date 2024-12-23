# MATH/BZ/3/I/F/START
#
#   Given a start point (a), an end point (c), a single control point (b), and an amount of iteration steps, begin a bezier iteration.
#   Once an iteration has been started, calling math/bz/3/i/f/loop will perform one iteration along the bezier curve. Once the amount of iterations becomes equal to
#   the starting iteration count value, the entire curve will have been traversed.
#
#   This uses global fake player scores. Starting another iteration will overwrite this one.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.3.in.a.[x,y,z] ntils.API (3)
#       | #math.bz.3.in.b.[x,y,z] ntils.API (3)
#       | #math.bz.3.in.c.[x,y,z] ntils.API (3)
#       | #math.bz.3.in.iterations ntils.API
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.3.out.[x,y,z] ntils.API (3)      <- The starting point of the iteration (point a).
#   > Storage:
#       | ntils:api math.bz.3.out, double list (3)  <- Point a as usable nbt.
#   > Misc:
#       | This function begins an iteration and stores the scores to perform that iteration globally.
#       | Calling ntils:api/math/bz/3/i/f/loop will perform one step of the iteration and create usable output.
#
# PERFORMANCE: Okay

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

execute store result score #math.bz.3.i.vec_s.x ntils.z.math.bz.3.temp store result score #math.bz.3.i.vec.x ntils.z.math.bz.3.temp run scoreboard players operation #o.x ntils.z.math.bz.3.temp += #m.x ntils.z.math.bz.3.temp
execute store result score #math.bz.3.i.accel.x ntils.z.math.bz.3.temp run scoreboard players operation #m.x ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.3.i.vec_s.x ntils.z.math.bz.3.temp /= #1000 ntils.z.const

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

execute store result score #math.bz.3.i.vec_s.y ntils.z.math.bz.3.temp store result score #math.bz.3.i.vec.y ntils.z.math.bz.3.temp run scoreboard players operation #o.y ntils.z.math.bz.3.temp += #m.y ntils.z.math.bz.3.temp
execute store result score #math.bz.3.i.accel.y ntils.z.math.bz.3.temp run scoreboard players operation #m.y ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.3.i.vec_s.y ntils.z.math.bz.3.temp /= #1000 ntils.z.const

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

execute store result score #math.bz.3.i.vec_s.z ntils.z.math.bz.3.temp store result score #math.bz.3.i.vec.z ntils.z.math.bz.3.temp run scoreboard players operation #o.z ntils.z.math.bz.3.temp += #m.z ntils.z.math.bz.3.temp
execute store result score #math.bz.3.i.accel.z ntils.z.math.bz.3.temp run scoreboard players operation #m.z ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.3.i.vec_s.z ntils.z.math.bz.3.temp /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.3.out[0] double 0.001 store result score #math.bz.3.out.x ntils.API run scoreboard players operation #math.bz.3.i.base.x ntils.z.math.bz.3.temp = #math.bz.3.in.a.x ntils.API
execute store result storage ntils:api math.bz.3.out[1] double 0.001 store result score #math.bz.3.out.y ntils.API run scoreboard players operation #math.bz.3.i.base.y ntils.z.math.bz.3.temp = #math.bz.3.in.a.y ntils.API
execute store result storage ntils:api math.bz.3.out[2] double 0.001 store result score #math.bz.3.out.z ntils.API run scoreboard players operation #math.bz.3.i.base.z ntils.z.math.bz.3.temp = #math.bz.3.in.a.z ntils.API