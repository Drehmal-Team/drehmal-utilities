# MATH/BZ/3/C/THROUGH
#
# Given a start point, an end point, a target point for the curve to pass through, and the t value of the curve at that point, calculates the control points of a 3 point bezier curve.
#
# WARNING: This code suffers from moderate precision loss. Unlike the 4 point calculator, however, it's nowhere near as drastic.
#
# NOTE: THIS MODIFIES INPUT SCORES. The output of this function is meant to be used *directly* in other functions, and as such the output is in the form of input scores.
#
#   INPUT SCORES:
#
# These are the inputs for the start point. Scale them by 1000
#   #math.bz.3.in.a.x ntils.API
#   #math.bz.3.in.a.y ntils.API
#   #math.bz.3.in.a.z ntils.API
#
# These are the inputs for the target point. Scale them by 1000
#   #math.bz.3.in.p.x ntils.API
#   #math.bz.3.in.p.y ntils.API
#   #math.bz.3.in.p.z ntils.API
#
# These are the inputs for the end point. Scale them by 1000
#   #math.bz.3.in.c.x ntils.API
#   #math.bz.3.in.c.y ntils.API
#   #math.bz.3.in.c.z ntils.API
#
# This is the t value of the curve at p. Ranges from 0 to 1000 (though, super small numbers will make fucky things happen)
#   #math.bz.3.in.t ntils.API
#
#   OUTPUT:
#
# Scores for the first and second control point of the curve. They are specifically saved as "in" scores, not out scores. This is intentional.
#   #math.bz.3.in.b.x ntils.API
#   #math.bz.3.in.b.y ntils.API
#   #math.bz.3.in.b.z ntils.API
#
# PERFORMANCE: Great. Far superior to the 4 point version, and magnitudes more accurate.

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