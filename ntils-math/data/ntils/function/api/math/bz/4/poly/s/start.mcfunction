# MATH/BZ/4/POLY/S/START
#
#   Begin a polynomial bezier iteration on the @s entity. Not to be confused with bz/4/i, this iteration
#   style allows you to freely define your t values you wish to compute.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.4.in.a.[x,y,z] ntils.API (3)
#       | #math.bz.4.in.b.[x,y,z] ntils.API (3)
#       | #math.bz.4.in.c.[x,y,z] ntils.API (3)
#       | #math.bz.4.in.d.[x,y,z] ntils.API (3)
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.4.out.[x,y,z] ntils.API (3)      <- The starting point of the iteration (point a).
#   > Storage:
#       | ntils:api math.bz.4.out, double list (3)  <- Point a as usable nbt.
#   > Misc:
#       | A bezier iteration will begin on the @s entity. Calling poly/s/fetch with a t value
#       | as input will calculate the point along the curve with that t value.
#
# PERFORMANCE: Good
#   Faster than 4/point if you want to get more than 1 point.

# X --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation @s ntils.z.math.bz.4.poly.3.x = #math.bz.4.in.c.x ntils.API
execute store result score @s ntils.z.math.bz.4.poly.2.x run scoreboard players operation @s ntils.z.math.bz.4.poly.3.x -= #math.bz.4.in.b.x ntils.API

scoreboard players operation @s ntils.z.math.bz.4.poly.2.x -= #math.bz.4.in.b.x ntils.API
scoreboard players operation @s ntils.z.math.bz.4.poly.2.x += #math.bz.4.in.a.x ntils.API
scoreboard players operation @s ntils.z.math.bz.4.poly.2.x *= #3 ntils.z.const

scoreboard players operation @s ntils.z.math.bz.4.poly.3.x *= #-3 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.4.poly.3.x -= #math.bz.4.in.a.x ntils.API
scoreboard players operation @s ntils.z.math.bz.4.poly.3.x += #math.bz.4.in.d.x ntils.API

execute store result storage ntils:api math.bz.4.out[0] double 0.001 store result score #math.bz.4.out.x ntils.API store result score @s ntils.z.math.bz.4.poly.1.x run scoreboard players operation @s ntils.z.math.bz.4.poly.0.x = #math.bz.4.in.a.x ntils.API
scoreboard players operation @s ntils.z.math.bz.4.poly.1.x -= #math.bz.4.in.b.x ntils.API
scoreboard players operation @s ntils.z.math.bz.4.poly.1.x *= #-3 ntils.z.const

# Y --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation @s ntils.z.math.bz.4.poly.3.y = #math.bz.4.in.c.y ntils.API
execute store result score @s ntils.z.math.bz.4.poly.2.y run scoreboard players operation @s ntils.z.math.bz.4.poly.3.y -= #math.bz.4.in.b.y ntils.API

scoreboard players operation @s ntils.z.math.bz.4.poly.2.y -= #math.bz.4.in.b.y ntils.API
scoreboard players operation @s ntils.z.math.bz.4.poly.2.y += #math.bz.4.in.a.y ntils.API
scoreboard players operation @s ntils.z.math.bz.4.poly.2.y *= #3 ntils.z.const

scoreboard players operation @s ntils.z.math.bz.4.poly.3.y *= #-3 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.4.poly.3.y -= #math.bz.4.in.a.y ntils.API
scoreboard players operation @s ntils.z.math.bz.4.poly.3.y += #math.bz.4.in.d.y ntils.API

execute store result storage ntils:api math.bz.4.out[1] double 0.001 store result score #math.bz.4.out.y ntils.API store result score @s ntils.z.math.bz.4.poly.1.y run scoreboard players operation @s ntils.z.math.bz.4.poly.0.y = #math.bz.4.in.a.y ntils.API
scoreboard players operation @s ntils.z.math.bz.4.poly.1.y -= #math.bz.4.in.b.y ntils.API
scoreboard players operation @s ntils.z.math.bz.4.poly.1.y *= #-3 ntils.z.const

# Z --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation @s ntils.z.math.bz.4.poly.3.z = #math.bz.4.in.c.z ntils.API
execute store result score @s ntils.z.math.bz.4.poly.2.z run scoreboard players operation @s ntils.z.math.bz.4.poly.3.z -= #math.bz.4.in.b.z ntils.API

scoreboard players operation @s ntils.z.math.bz.4.poly.2.z -= #math.bz.4.in.b.z ntils.API
scoreboard players operation @s ntils.z.math.bz.4.poly.2.z += #math.bz.4.in.a.z ntils.API
scoreboard players operation @s ntils.z.math.bz.4.poly.2.z *= #3 ntils.z.const

scoreboard players operation @s ntils.z.math.bz.4.poly.3.z *= #-3 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.4.poly.3.z -= #math.bz.4.in.a.z ntils.API
scoreboard players operation @s ntils.z.math.bz.4.poly.3.z += #math.bz.4.in.d.z ntils.API

execute store result storage ntils:api math.bz.4.out[2] double 0.001 store result score #math.bz.4.out.z ntils.API store result score @s ntils.z.math.bz.4.poly.1.z run scoreboard players operation @s ntils.z.math.bz.4.poly.0.z = #math.bz.4.in.a.z ntils.API
scoreboard players operation @s ntils.z.math.bz.4.poly.1.z -= #math.bz.4.in.b.z ntils.API
scoreboard players operation @s ntils.z.math.bz.4.poly.1.z *= #-3 ntils.z.const