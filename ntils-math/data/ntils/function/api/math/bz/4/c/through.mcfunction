# MATH/BZ/4/C/THROUGH
#
#   Given a start point, an end point, two target points for the curve to pass through, and the t values of the curve at those points, calculates the control points of a 4 point bezier curve.
#   This code suffers from MASSIVE precision loss. The calculated locations of the control points can be entire blocks off from where they should be. Do not rely on this for *anything* that would be screwed over by that.
#   NOTE: THIS MODIFIES INPUT SCORES. The output of this function is meant to be used *directly* in other functions, and as such the output is in the form of input scores.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.4.in.a.[x,y,z] ntils.API (3)     <- The coordinates of the starting point.
#       | #math.bz.4.in.p1.[x,y,z] ntils.API (3)    <- The coordinates of the first target point.
#       | #math.bz.4.in.p2.[x,y,z] ntils.API (3)    <- The coordinates of the second target point.
#       | #math.bz.4.in.d.[x,y,z] ntils.API (3)     <- The coordinates of the end point.
#       | #math.bz.4.in.[t1,t2] ntils.API (2)       <- The desired t values for the target points, such that f(t1) = p1 and f(t2) = p2.
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.4.in.b.[x,y,z] ntils.API (3)
#       | #math.bz.4.in.c.[x,y,z] ntils.API (3)
#
# PERFORMANCE: Okay
#   It's just 99 scoreboard commands.

scoreboard players operation #t1^2 ntils.z.math.bz.4.temp = #math.bz.4.in.t1 ntils.API
execute store result score #t1^3 ntils.z.math.bz.4.temp store result score #t1^2.div ntils.z.math.bz.4.temp run scoreboard players operation #t1^2 ntils.z.math.bz.4.temp *= #math.bz.4.in.t1 ntils.API
scoreboard players operation #t1^3 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
execute store result score #t1^3.div ntils.z.math.bz.4.temp run scoreboard players operation #t1^3 ntils.z.math.bz.4.temp *= #math.bz.4.in.t1 ntils.API
scoreboard players operation #t1^2.div ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #t1^3.div ntils.z.math.bz.4.temp /= #1000 ntils.z.const

scoreboard players operation #t2^2 ntils.z.math.bz.4.temp = #math.bz.4.in.t2 ntils.API
execute store result score #t2^3 ntils.z.math.bz.4.temp store result score #t2^2.div ntils.z.math.bz.4.temp run scoreboard players operation #t2^2 ntils.z.math.bz.4.temp *= #math.bz.4.in.t2 ntils.API
scoreboard players operation #t2^3 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
execute store result score #t2^3.div ntils.z.math.bz.4.temp run scoreboard players operation #t2^3 ntils.z.math.bz.4.temp *= #math.bz.4.in.t2 ntils.API
scoreboard players operation #t2^2.div ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #t2^3.div ntils.z.math.bz.4.temp /= #1000 ntils.z.const

# denom

scoreboard players operation #de ntils.z.math.bz.4.temp = #math.bz.4.in.t1 ntils.API
scoreboard players operation #de ntils.z.math.bz.4.temp -= #math.bz.4.in.t2 ntils.API
scoreboard players operation #de ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #de ntils.z.math.bz.4.temp -= #t1^2 ntils.z.math.bz.4.temp
scoreboard players operation #de ntils.z.math.bz.4.temp += #t2^2 ntils.z.math.bz.4.temp

scoreboard players operation #m ntils.z.math.bz.4.temp = #math.bz.4.in.t2 ntils.API
scoreboard players operation #m ntils.z.math.bz.4.temp -= #math.bz.4.in.t1 ntils.API
scoreboard players operation #m ntils.z.math.bz.4.temp *= #math.bz.4.in.t1 ntils.API
scoreboard players operation #m ntils.z.math.bz.4.temp *= #math.bz.4.in.t2 ntils.API

scoreboard players operation #m ntils.z.math.bz.4.temp /= #1000 ntils.z.const

scoreboard players operation #de ntils.z.math.bz.4.temp -= #m ntils.z.math.bz.4.temp
scoreboard players operation #de ntils.z.math.bz.4.temp *= #math.bz.4.in.t1 ntils.API
scoreboard players operation #de ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #de ntils.z.math.bz.4.temp *= #math.bz.4.in.t2 ntils.API
scoreboard players operation #de ntils.z.math.bz.4.temp /= #333333 ntils.z.const

# RUNS ONCE

scoreboard players operation #math.bz.4.in.b.x ntils.API = #t2^2.div ntils.z.math.bz.4.temp
execute store result score #math.bz.4.in.b.y ntils.API store result score #math.bz.4.in.b.z ntils.API run scoreboard players operation #math.bz.4.in.b.x ntils.API -= #t2^3.div ntils.z.math.bz.4.temp

scoreboard players operation #multb.x ntils.z.math.bz.4.temp = #t1^2.div ntils.z.math.bz.4.temp
execute store result score #multb.y ntils.z.math.bz.4.temp store result score #multb.z ntils.z.math.bz.4.temp run scoreboard players operation #multb.x ntils.z.math.bz.4.temp -= #t1^3.div ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.in.c.x ntils.API = #t1^3.div ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.c.x ntils.API -= #t1^2.div ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.c.x ntils.API -= #t1^2.div ntils.z.math.bz.4.temp
execute store result score #math.bz.4.in.c.y ntils.API store result score #math.bz.4.in.c.z ntils.API run scoreboard players operation #math.bz.4.in.c.x ntils.API += #math.bz.4.in.t1 ntils.API

scoreboard players operation #multc.x ntils.z.math.bz.4.temp = #t2^3.div ntils.z.math.bz.4.temp
scoreboard players operation #multc.x ntils.z.math.bz.4.temp -= #t2^2.div ntils.z.math.bz.4.temp
scoreboard players operation #multc.x ntils.z.math.bz.4.temp -= #t2^2.div ntils.z.math.bz.4.temp
execute store result score #multc.y ntils.z.math.bz.4.temp store result score #multc.z ntils.z.math.bz.4.temp run scoreboard players operation #multc.x ntils.z.math.bz.4.temp += #math.bz.4.in.t2 ntils.API

# PER AXIS
# X --- #

scoreboard players operation #fract1 ntils.z.math.bz.4.temp = #math.bz.4.in.d.x ntils.API
execute store result score #fract2 ntils.z.math.bz.4.temp run scoreboard players operation #fract1 ntils.z.math.bz.4.temp -= #math.bz.4.in.a.x ntils.API
scoreboard players operation #fract1 ntils.z.math.bz.4.temp *= #t1^3.div ntils.z.math.bz.4.temp
scoreboard players operation #fract1 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #fract1 ntils.z.math.bz.4.temp -= #math.bz.4.in.p1.x ntils.API
scoreboard players operation #fract1 ntils.z.math.bz.4.temp += #math.bz.4.in.a.x ntils.API

scoreboard players operation #fract2 ntils.z.math.bz.4.temp *= #t2^3.div ntils.z.math.bz.4.temp
scoreboard players operation #fract2 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #fract2 ntils.z.math.bz.4.temp -= #math.bz.4.in.p2.x ntils.API
scoreboard players operation #fract2 ntils.z.math.bz.4.temp += #math.bz.4.in.a.x ntils.API

scoreboard players operation #math.bz.4.in.b.x ntils.API *= #fract1 ntils.z.math.bz.4.temp
scoreboard players operation #multb.x ntils.z.math.bz.4.temp *= #fract2 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.b.x ntils.API -= #multb.x ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.b.x ntils.API /= #de ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.b.x ntils.API += #math.bz.4.in.a.x ntils.API

scoreboard players operation #math.bz.4.in.c.x ntils.API *= #fract2 ntils.z.math.bz.4.temp
scoreboard players operation #multc.x ntils.z.math.bz.4.temp *= #fract1 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.c.x ntils.API -= #multc.x ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.c.x ntils.API /= #de ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.c.x ntils.API += #math.bz.4.in.a.x ntils.API

# Y --- #

scoreboard players operation #fract1 ntils.z.math.bz.4.temp = #math.bz.4.in.d.y ntils.API
execute store result score #fract2 ntils.z.math.bz.4.temp run scoreboard players operation #fract1 ntils.z.math.bz.4.temp -= #math.bz.4.in.a.y ntils.API
scoreboard players operation #fract1 ntils.z.math.bz.4.temp *= #t1^3.div ntils.z.math.bz.4.temp
scoreboard players operation #fract1 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #fract1 ntils.z.math.bz.4.temp -= #math.bz.4.in.p1.y ntils.API
scoreboard players operation #fract1 ntils.z.math.bz.4.temp += #math.bz.4.in.a.y ntils.API

scoreboard players operation #fract2 ntils.z.math.bz.4.temp *= #t2^3.div ntils.z.math.bz.4.temp
scoreboard players operation #fract2 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #fract2 ntils.z.math.bz.4.temp -= #math.bz.4.in.p2.y ntils.API
scoreboard players operation #fract2 ntils.z.math.bz.4.temp += #math.bz.4.in.a.y ntils.API

scoreboard players operation #math.bz.4.in.b.y ntils.API *= #fract1 ntils.z.math.bz.4.temp
scoreboard players operation #multb.y ntils.z.math.bz.4.temp *= #fract2 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.b.y ntils.API -= #multb.y ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.b.y ntils.API /= #de ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.b.y ntils.API += #math.bz.4.in.a.y ntils.API

scoreboard players operation #math.bz.4.in.c.y ntils.API *= #fract2 ntils.z.math.bz.4.temp
scoreboard players operation #multc.y ntils.z.math.bz.4.temp *= #fract1 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.c.y ntils.API -= #multc.y ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.c.y ntils.API /= #de ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.c.y ntils.API += #math.bz.4.in.a.y ntils.API

# Z --- #

scoreboard players operation #fract1 ntils.z.math.bz.4.temp = #math.bz.4.in.d.z ntils.API
execute store result score #fract2 ntils.z.math.bz.4.temp run scoreboard players operation #fract1 ntils.z.math.bz.4.temp -= #math.bz.4.in.a.z ntils.API
scoreboard players operation #fract1 ntils.z.math.bz.4.temp *= #t1^3.div ntils.z.math.bz.4.temp
scoreboard players operation #fract1 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #fract1 ntils.z.math.bz.4.temp -= #math.bz.4.in.p1.z ntils.API
scoreboard players operation #fract1 ntils.z.math.bz.4.temp += #math.bz.4.in.a.z ntils.API

scoreboard players operation #fract2 ntils.z.math.bz.4.temp *= #t2^3.div ntils.z.math.bz.4.temp
scoreboard players operation #fract2 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #fract2 ntils.z.math.bz.4.temp -= #math.bz.4.in.p2.z ntils.API
scoreboard players operation #fract2 ntils.z.math.bz.4.temp += #math.bz.4.in.a.z ntils.API

scoreboard players operation #math.bz.4.in.b.z ntils.API *= #fract1 ntils.z.math.bz.4.temp
scoreboard players operation #multb.z ntils.z.math.bz.4.temp *= #fract2 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.b.z ntils.API -= #multb.z ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.b.z ntils.API /= #de ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.b.z ntils.API += #math.bz.4.in.a.z ntils.API

scoreboard players operation #math.bz.4.in.c.z ntils.API *= #fract2 ntils.z.math.bz.4.temp
scoreboard players operation #multc.z ntils.z.math.bz.4.temp *= #fract1 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.c.z ntils.API -= #multc.z ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.c.z ntils.API /= #de ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.in.c.z ntils.API += #math.bz.4.in.a.z ntils.API