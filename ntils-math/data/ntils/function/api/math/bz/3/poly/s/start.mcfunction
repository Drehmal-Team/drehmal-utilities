# MATH/BZ/3/POLY/S/START
#
#   Begin a polynomial bezier iteration on the @s entity. Not to be confused with bz/3/i, this iteration
#   style allows you to freely define your t values you wish to compute.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.3.in.a.[x,y,z] ntils.API (3)
#       | #math.bz.3.in.b.[x,y,z] ntils.API (3)
#       | #math.bz.3.in.c.[x,y,z] ntils.API (3)
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.3.out.[x,y,z] ntils.API (3)      <- The starting point of the iteration (point a).
#   > Storage:
#       | ntils:api math.bz.3.out, double list (3)  <- Point a as usable nbt.
#   > Misc:
#       | A bezier iteration will begin on the @s entity. Calling poly/s/fetch with a t value
#       | as input will calculate the point along the curve with that t value.
#
# PERFORMANCE: Excellent
#   Might want to look into slowing this down so that s/fetch can be sped up.


# X --------------------------------------------------------------------------------------------------------------- #

execute store result storage ntils:api math.bz.3.out[0] double 0.001 store result score #math.bz.3.out.x ntils.API store result score @s ntils.z.math.bz.3.poly.1.x run scoreboard players operation @s ntils.z.math.bz.3.poly.0.x = #math.bz.3.in.a.x ntils.API
execute store result score @s ntils.z.math.bz.3.poly.2.x run scoreboard players operation @s ntils.z.math.bz.3.poly.1.x -= #math.bz.3.in.b.x ntils.API
scoreboard players operation @s ntils.z.math.bz.3.poly.1.x *= #-2 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.3.poly.2.x -= #math.bz.3.in.b.x ntils.API
scoreboard players operation @s ntils.z.math.bz.3.poly.2.x += #math.bz.3.in.c.x ntils.API

# Y --------------------------------------------------------------------------------------------------------------- #

execute store result storage ntils:api math.bz.3.out[1] double 0.001 store result score #math.bz.3.out.y ntils.API store result score @s ntils.z.math.bz.3.poly.1.y run scoreboard players operation @s ntils.z.math.bz.3.poly.0.y = #math.bz.3.in.a.y ntils.API
execute store result score @s ntils.z.math.bz.3.poly.2.y run scoreboard players operation @s ntils.z.math.bz.3.poly.1.y -= #math.bz.3.in.b.y ntils.API
scoreboard players operation @s ntils.z.math.bz.3.poly.1.y *= #-2 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.3.poly.2.y -= #math.bz.3.in.b.y ntils.API
scoreboard players operation @s ntils.z.math.bz.3.poly.2.y += #math.bz.3.in.c.y ntils.API

# Z --------------------------------------------------------------------------------------------------------------- #

execute store result storage ntils:api math.bz.3.out[2] double 0.001 store result score #math.bz.3.out.z ntils.API store result score @s ntils.z.math.bz.3.poly.1.z run scoreboard players operation @s ntils.z.math.bz.3.poly.0.z = #math.bz.3.in.a.z ntils.API
execute store result score @s ntils.z.math.bz.3.poly.2.z run scoreboard players operation @s ntils.z.math.bz.3.poly.1.z -= #math.bz.3.in.b.z ntils.API
scoreboard players operation @s ntils.z.math.bz.3.poly.1.z *= #-2 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.3.poly.2.z -= #math.bz.3.in.b.z ntils.API
scoreboard players operation @s ntils.z.math.bz.3.poly.2.z += #math.bz.3.in.c.z ntils.API