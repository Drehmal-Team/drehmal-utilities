# MATH/BZ/3/POLY/S/FETCH
#
#   Find a point along a quadratic bezier curve given a t value using the polynomial coefficients defined
#   on the @s entity.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.3.in.t ntils.API     <- A value from 0 to 1000.
#   > Misc:
#       | A polynomial bezier iteration must have been started on the @s entity
#       | with the use of the math/bz/3/poly/s/start function. This will not work
#       | if such an iteration was not started.
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.3.out.[x,y,z] ntils.API (3)
#   > Storage:
#       | ntils:api math.bz.3.out, double list (3)
#
# PERFORMANCE: Good

# X --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.3.out.x ntils.API = @s ntils.z.math.bz.3.poly.2.x
scoreboard players operation #math.bz.3.out.x ntils.API *= #math.bz.3.in.t ntils.API
scoreboard players operation #math.bz.3.out.x ntils.API /= #1000 ntils.z.const

scoreboard players operation #math.bz.3.out.x ntils.API += @s ntils.z.math.bz.3.poly.1.x
scoreboard players operation #math.bz.3.out.x ntils.API *= #math.bz.3.in.t ntils.API
scoreboard players operation #math.bz.3.out.x ntils.API /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.3.out[0] double 0.001 run scoreboard players operation #math.bz.3.out.x ntils.API += @s ntils.z.math.bz.3.poly.0.x

# Y --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.3.out.y ntils.API = @s ntils.z.math.bz.3.poly.2.y
scoreboard players operation #math.bz.3.out.y ntils.API *= #math.bz.3.in.t ntils.API
scoreboard players operation #math.bz.3.out.y ntils.API /= #1000 ntils.z.const

scoreboard players operation #math.bz.3.out.y ntils.API += @s ntils.z.math.bz.3.poly.1.y
scoreboard players operation #math.bz.3.out.y ntils.API *= #math.bz.3.in.t ntils.API
scoreboard players operation #math.bz.3.out.y ntils.API /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.3.out[1] double 0.001 run scoreboard players operation #math.bz.3.out.y ntils.API += @s ntils.z.math.bz.3.poly.0.y

# Z --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.3.out.z ntils.API = @s ntils.z.math.bz.3.poly.2.z
scoreboard players operation #math.bz.3.out.z ntils.API *= #math.bz.3.in.t ntils.API
scoreboard players operation #math.bz.3.out.z ntils.API /= #1000 ntils.z.const

scoreboard players operation #math.bz.3.out.z ntils.API += @s ntils.z.math.bz.3.poly.1.z
scoreboard players operation #math.bz.3.out.z ntils.API *= #math.bz.3.in.t ntils.API
scoreboard players operation #math.bz.3.out.z ntils.API /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.3.out[2] double 0.001 run scoreboard players operation #math.bz.3.out.z ntils.API += @s ntils.z.math.bz.3.poly.0.z