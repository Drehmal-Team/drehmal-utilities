# MATH/BZ/4/POLY/S/FETCH
#
#   Find a point along a cubic bezier curve given a t value using the polynomial coefficients defined
#   on the @s entity.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.4.in.t ntils.API     <- A value from 0 to 1000.
#   > Misc:
#       | A polynomial bezier iteration must have been started on the @s entity
#       | with the use of the math/bz/4/poly/s/start function. This will not work
#       | if such an iteration was not started.
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.4.out.[x,y,z] ntils.API (3)
#   > Storage:
#       | ntils:api math.bz.4.out, double list (3)
#
# PERFORMANCE: Good

# X --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.4.out.x ntils.API = @s ntils.z.math.bz.4.poly.3.x
scoreboard players operation #math.bz.4.out.x ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.x ntils.API /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.out.x ntils.API += @s ntils.z.math.bz.4.poly.2.x
scoreboard players operation #math.bz.4.out.x ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.x ntils.API /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.out.x ntils.API += @s ntils.z.math.bz.4.poly.1.x
scoreboard players operation #math.bz.4.out.x ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.x ntils.API /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.4.out[0] double 0.001 run scoreboard players operation #math.bz.4.out.x ntils.API += @s ntils.z.math.bz.4.poly.0.x

# Y --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.4.out.y ntils.API = @s ntils.z.math.bz.4.poly.3.y
scoreboard players operation #math.bz.4.out.y ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.y ntils.API /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.out.y ntils.API += @s ntils.z.math.bz.4.poly.2.y
scoreboard players operation #math.bz.4.out.y ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.y ntils.API /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.out.y ntils.API += @s ntils.z.math.bz.4.poly.1.y
scoreboard players operation #math.bz.4.out.y ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.y ntils.API /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.4.out[1] double 0.001 run scoreboard players operation #math.bz.4.out.y ntils.API += @s ntils.z.math.bz.4.poly.0.y

# Z --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.4.out.z ntils.API = @s ntils.z.math.bz.4.poly.3.z
scoreboard players operation #math.bz.4.out.z ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.z ntils.API /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.out.z ntils.API += @s ntils.z.math.bz.4.poly.2.z
scoreboard players operation #math.bz.4.out.z ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.z ntils.API /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.out.z ntils.API += @s ntils.z.math.bz.4.poly.1.z
scoreboard players operation #math.bz.4.out.z ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.z ntils.API /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.4.out[2] double 0.001 run scoreboard players operation #math.bz.4.out.z ntils.API += @s ntils.z.math.bz.4.poly.0.z