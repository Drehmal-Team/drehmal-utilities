# MATH/BZ/N/POINT
#
# Given an arbitrarily long list of points and a t value, calculates a point along a bezier curve of arbitrary order.
#
# NOTE: This suffers from HUGE precision issues for curves with more than 3 control points (5 points total). To be honest, this thing doesn't serve much of a purpose, but it sure is fun!
#
#   INPUT: ntils:api math.bz.n.in
#       |  This will be a list of lists. Each list must contain numbers, and they will be treated as coordinates, and will have their values scaled as such.
#       |  Copying entity Pos data directly to the list will create the desired effect.
#       |
#       |  The [0] entry of the list will be treated as the start, and the [-1] entry will be treated as the end.
#       |  All other points will be treated as controls.
#
#  SCOREBOARD INPUT: #math.bz.n.in.t ntils.API
#       | This is the t value for the point along the curve you want to access.
# 
#
# These are the scores for the XYZ output of the current position along the bezier curve.
#   #math.bz.n.out.x ntils.API
#   #math.bz.n.out.y ntils.API
#   #math.bz.n.out.z ntils.API
#
#   ADDITIONAL OUTPUT:
#
# At ntils:api math.bz.n.out, a [double,double,double] array with the position data from above will be created, so that you can easily just set an entities position data to it.
#
# PERFORMANCE: Okay
#   Do not use this! I will keep this in for posterity, but using this is highly inadvisable. I made this for fun.

execute store result score #math.choose.in.x ntils.API if data storage ntils:api math.bz.n.in[]
execute store result score #k ntils.z.math.bz.n.temp run scoreboard players remove #math.choose.in.x ntils.API 1
scoreboard players set #n ntils.z.math.bz.n.temp 0

scoreboard players set #1-t ntils.z.math.bz.n.temp 1000
scoreboard players operation #1-t ntils.z.math.bz.n.temp -= #math.bz.n.in.t ntils.API
scoreboard players set #t^n ntils.z.math.bz.n.temp 1000

data modify storage ntils:z math.bz.n.list set from storage ntils:api math.bz.n.in

execute store result score #a.x ntils.z.math.bz.n.temp store result score #math.bz.n.out.x ntils.API run data get storage ntils:z math.bz.n.list[0][0] 1000
execute store result score #a.y ntils.z.math.bz.n.temp store result score #math.bz.n.out.y ntils.API run data get storage ntils:z math.bz.n.list[0][1] 1000
execute store result score #a.z ntils.z.math.bz.n.temp store result score #math.bz.n.out.z ntils.API run data get storage ntils:z math.bz.n.list[0][2] 1000

data remove storage ntils:z math.bz.n.list[0]
execute if data storage ntils:z math.bz.n.list[] run function ntils:z/math/bz/n/point/main

execute store result storage ntils:api math.bz.n.out[0] double 0.001 run scoreboard players get #math.bz.n.out.x ntils.API
execute store result storage ntils:api math.bz.n.out[1] double 0.001 run scoreboard players get #math.bz.n.out.y ntils.API
execute store result storage ntils:api math.bz.n.out[2] double 0.001 run scoreboard players get #math.bz.n.out.z ntils.API