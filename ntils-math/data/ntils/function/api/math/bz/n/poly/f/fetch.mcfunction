# MATH/BZ/N/POINT
#
#   Find a point along a cubic bezier curve given a t value using the polynomial coefficients defined globally.
#   NOTE: Only works if math/bz/n/poly/f/start was called.
#
# INPUT: 
#   > Scoreboard:
#       | #math.bz.n.in.t ntils.API  <- This is the t value for the point along the curve you want to access.
# 
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.n.out.[x,y,z] ntils.API (3)
#   > Storage:
#       | ntils:api math.bz.n.out, double list (3). The scoreboard output in list form, for direct Pos modification.
#
# PERFORMANCE: Okay
#   Dramatically faster than n/point but much slower than the dedicated second and third order polynomial iterators.

data modify storage ntils:z math.bz.n.poly.f.t set from storage ntils:z math.bz.n.poly.f.coefficients
execute store result score #s.x ntils.z.math.bz.n.temp run data get storage ntils:z math.bz.n.poly.f.t[-1][0] 1000
execute store result score #s.y ntils.z.math.bz.n.temp run data get storage ntils:z math.bz.n.poly.f.t[-1][1] 1000
execute store result score #s.z ntils.z.math.bz.n.temp run data get storage ntils:z math.bz.n.poly.f.t[-1][2] 1000
data remove storage ntils:z math.bz.n.poly.f.t[-1]
execute if data storage ntils:z math.bz.n.poly.f.t[] run function ntils:z/math/bz/n/poly/fetch/loop

execute store result storage ntils:api math.bz.n.out[0] double 0.001 run scoreboard players operation #math.bz.n.out.x ntils.API = #s.x ntils.z.math.bz.n.temp
execute store result storage ntils:api math.bz.n.out[1] double 0.001 run scoreboard players operation #math.bz.n.out.y ntils.API = #s.y ntils.z.math.bz.n.temp
execute store result storage ntils:api math.bz.n.out[2] double 0.001 run scoreboard players operation #math.bz.n.out.z ntils.API = #s.z ntils.z.math.bz.n.temp