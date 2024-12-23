# MATH/BZ/3/C/THROUGH
#
#   Given a start point, an end point, a target point for the curve to pass through, and the t value of the curve at 
#   that point, calculates the control point of a 3 point bezier curve.
#   This code suffers from moderate precision loss. Unlike the 4 point calculator, however, it's nowhere near as drastic.
#   NOTE: THIS MODIFIES INPUT SCORES. The output of this function is meant to be used *directly* in other functions, and as such the output is in the form of input scores.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.3.in.a.[x,y,z] ntils.API (3)     <- Inputs for the starting point of the bezier curve.
#       | #math.bz.3.in.p.[x,y,z] ntils.API (3)     <- Inputs for the target point. The produced control point will create a 
#       |                                              curve that passes through this at the given t.
#       | #math.bz.3.in.c.[x,y,z] ntils.API (3)     <- Inputs for the end point of the bezier curve.
#       | NOTE: All vector scoreboards should be scaled by 1000, so an X of 3 in worldspace becomes an X of 3000 as an input.
#       |
#       | #math.bz.3.in.t ntils.API                 <- The t value at the target point of the curve. A value from 0 to 1000, though
#       |                                              it should be noted that very small or very large t values will cause precision loss.
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.3.in.b.[x,y,z] ntils.API (3)     <- Usable input for any of the other bezier functions in the pack.
#
# PERFORMANCE: Good
#   Far superior to the 4 point version, and magnitudes more accurate. 32 vs 99 commands.

scoreboard players operation #de ntils.z.math.bz.3.temp = #math.bz.3.in.t ntils.API
scoreboard players operation #de ntils.z.math.bz.3.temp *= #math.bz.3.in.t ntils.API
execute store result score #t^2 ntils.z.math.bz.3.temp run scoreboard players operation #de ntils.z.math.bz.3.temp /= #1000 ntils.z.const
scoreboard players operation #de ntils.z.math.bz.3.temp -= #math.bz.3.in.t ntils.API
scoreboard players operation #de ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #math.bz.3.out.b.x ntils.API = #math.bz.3.in.c.x ntils.API
scoreboard players operation #math.bz.3.out.b.x ntils.API -= #math.bz.3.in.a.x ntils.API
scoreboard players operation #math.bz.3.out.b.x ntils.API *= #t^2 ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.out.b.x ntils.API /= #1000 ntils.z.const
scoreboard players operation #math.bz.3.out.b.x ntils.API += #math.bz.3.in.a.x ntils.API
scoreboard players operation #math.bz.3.out.b.x ntils.API -= #math.bz.3.in.p.x ntils.API
scoreboard players operation #math.bz.3.out.b.x ntils.API *= #1000 ntils.z.const
scoreboard players operation #math.bz.3.out.b.x ntils.API /= #de ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.out.b.x ntils.API += #math.bz.3.in.a.x ntils.API

scoreboard players operation #math.bz.3.out.b.y ntils.API = #math.bz.3.in.c.y ntils.API
scoreboard players operation #math.bz.3.out.b.y ntils.API -= #math.bz.3.in.a.y ntils.API
scoreboard players operation #math.bz.3.out.b.y ntils.API *= #t^2 ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.out.b.y ntils.API /= #1000 ntils.z.const
scoreboard players operation #math.bz.3.out.b.y ntils.API += #math.bz.3.in.a.y ntils.API
scoreboard players operation #math.bz.3.out.b.y ntils.API -= #math.bz.3.in.p.y ntils.API
scoreboard players operation #math.bz.3.out.b.y ntils.API *= #1000 ntils.z.const
scoreboard players operation #math.bz.3.out.b.y ntils.API /= #de ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.out.b.y ntils.API += #math.bz.3.in.a.y ntils.API

scoreboard players operation #math.bz.3.out.b.z ntils.API = #math.bz.3.in.c.z ntils.API
scoreboard players operation #math.bz.3.out.b.z ntils.API -= #math.bz.3.in.a.z ntils.API
scoreboard players operation #math.bz.3.out.b.z ntils.API *= #t^2 ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.out.b.z ntils.API /= #1000 ntils.z.const
scoreboard players operation #math.bz.3.out.b.z ntils.API += #math.bz.3.in.a.z ntils.API
scoreboard players operation #math.bz.3.out.b.z ntils.API -= #math.bz.3.in.p.z ntils.API
scoreboard players operation #math.bz.3.out.b.z ntils.API *= #1000 ntils.z.const
scoreboard players operation #math.bz.3.out.b.z ntils.API /= #de ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.out.b.z ntils.API += #math.bz.3.in.a.z ntils.API