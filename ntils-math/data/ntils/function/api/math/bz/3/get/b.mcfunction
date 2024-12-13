# MATH/BZ/3/GET/B
#
#   Gets the current position context and stores it in the input scores for point B of a quadratic curve.
#   NOTE: This function modifies input scores directly! Use this for convenience, but be aware that it is not returning any output.
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.3.in.b.x ntils.API
#       | #math.bz.3.in.b.y ntils.API
#       | #math.bz.3.in.b.z ntils.API
#
# PERFORMANCE: Good
#   Not necessarily ideal, but good enough that it can be used in any situation where performance isnt a total priority.

function ntils:api/context/pos/get
execute store result score #math.bz.3.in.b.x ntils.API run data get storage ntils:api context.pos.get.out[0] 1000
execute store result score #math.bz.3.in.b.y ntils.API run data get storage ntils:api context.pos.get.out[1] 1000
execute store result score #math.bz.3.in.b.z ntils.API run data get storage ntils:api context.pos.get.out[2] 1000