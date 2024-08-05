# MATH/BZ/I/S/LOOP
#
# Iterates a single step along the beizer curve initialized by the math/bz/i/s/loop function and sets the output scores/data.
# This iterates using the scores on the current @s entity.
#
#   OUTPUT SCORES:
#
# These are the scores for the XYZ output of the current position along the beizer curve.
#   #math.bz.i.out.x ntils.API
#   #math.bz.i.out.y ntils.API
#   #math.bz.i.out.z ntils.API
#
#   ADDITIONAL OUTPUT:
#
# At ntils:api math.bz.i.out, a [double,double,double] array with the position data from above will be created, so that you can easily just set an entities position data to it.
#
# PERFORMANCE: Excellent. Probably about as optimized as you can even make this.

execute store result storage ntils:api math.bz.i.out[0] double 0.001 store result score #math.bz.i.out.x ntils.API run scoreboard players operation @s ntils.z.math.bz.i.base.x += @s ntils.z.math.bz.i.vec_s.x
execute store result score @s ntils.z.math.bz.i.vec_s.x run scoreboard players operation @s ntils.z.math.bz.i.vec.x += @s ntils.z.math.bz.i.accel.x
scoreboard players operation @s ntils.z.math.bz.i.vec_s.x /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.i.out[1] double 0.001 store result score #math.bz.i.out.y ntils.API run scoreboard players operation @s ntils.z.math.bz.i.base.y += @s ntils.z.math.bz.i.vec_s.y
execute store result score @s ntils.z.math.bz.i.vec_s.y run scoreboard players operation @s ntils.z.math.bz.i.vec.y += @s ntils.z.math.bz.i.accel.y
scoreboard players operation @s ntils.z.math.bz.i.vec_s.y /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.i.out[2] double 0.001 store result score #math.bz.i.out.z ntils.API run scoreboard players operation @s ntils.z.math.bz.i.base.z += @s ntils.z.math.bz.i.vec_s.z
execute store result score @s ntils.z.math.bz.i.vec_s.z run scoreboard players operation @s ntils.z.math.bz.i.vec.z += @s ntils.z.math.bz.i.accel.z
scoreboard players operation @s ntils.z.math.bz.i.vec_s.z /= #1000 ntils.z.const