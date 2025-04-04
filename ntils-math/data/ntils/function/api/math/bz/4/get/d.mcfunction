# MATH/BZ/4/GET/D
#
#   Gets the current position context and stores it in the input scores for point D of a cubic curve.
#   NOTE: This function modifies input scores directly! Use this for convenience, but be aware that it is not returning any output.
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.4.in.d.[x,y,z] ntils.API (3)
#
# PERFORMANCE: Good
#   Not necessarily ideal, but good enough that it can be used in any situation where performance isnt a total priority.

function ntils:api/context/pos/get
execute store result score #math.bz.4.in.d.x ntils.API run data get storage ntils:api context.pos.get.out[0] 1000
execute store result score #math.bz.4.in.d.y ntils.API run data get storage ntils:api context.pos.get.out[1] 1000
execute store result score #math.bz.4.in.d.z ntils.API run data get storage ntils:api context.pos.get.out[2] 1000