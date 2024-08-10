# MATH/BZ/4/I/S/LOOP
#
# Iterates a single step along the beizer curve initialized by the math/bz/4/i/s/loop function and sets the output scores/data.
# This iterates using the scores on the current @s entity.
#
#   OUTPUT SCORES:
#
# These are the scores for the XYZ output of the current position along the beizer curve.
#   #math.bz.4.i.out.x ntils.API
#   #math.bz.4.i.out.y ntils.API
#   #math.bz.4.i.out.z ntils.API
#
#   ADDITIONAL OUTPUT:
#
# At ntils:api math.bz.4.i.out, a [double,double,double] array with the position data from above will be created, so that you can easily just set an entities position data to it.
#
# PERFORMANCE: Excellent. Could have been less commands if fixed point wasnt a fuck

execute store result storage ntils:api math.bz.4.i.out[0] double 0.001 store result score #math.bz.4.i.out.x ntils.API run scoreboard players operation @s ntils.z.math.bz.4.i.base.x += @s ntils.z.math.bz.4.i.vec_s.x
execute store result score @s ntils.z.math.bz.4.i.vec_s.x run scoreboard players operation @s ntils.z.math.bz.4.i.vec.x += @s ntils.z.math.bz.4.i.accel_s.x
execute store result score @s ntils.z.math.bz.4.i.accel_s.x run scoreboard players operation @s ntils.z.math.bz.4.i.accel.x += @s ntils.z.math.bz.4.i.jerk.x
scoreboard players operation @s ntils.z.math.bz.4.i.vec_s.x /= #1000 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.4.i.accel_s.x /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.4.i.out[1] double 0.001 store result score #math.bz.4.i.out.y ntils.API run scoreboard players operation @s ntils.z.math.bz.4.i.base.y += @s ntils.z.math.bz.4.i.vec_s.y
execute store result score @s ntils.z.math.bz.4.i.vec_s.y run scoreboard players operation @s ntils.z.math.bz.4.i.vec.y += @s ntils.z.math.bz.4.i.accel_s.y
execute store result score @s ntils.z.math.bz.4.i.accel_s.y run scoreboard players operation @s ntils.z.math.bz.4.i.accel.y += @s ntils.z.math.bz.4.i.jerk.y
scoreboard players operation @s ntils.z.math.bz.4.i.vec_s.y /= #1000 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.4.i.accel_s.y /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.4.i.out[2] double 0.001 store result score #math.bz.4.i.out.z ntils.API run scoreboard players operation @s ntils.z.math.bz.4.i.base.z += @s ntils.z.math.bz.4.i.vec_s.z
execute store result score @s ntils.z.math.bz.4.i.vec_s.z run scoreboard players operation @s ntils.z.math.bz.4.i.vec.z += @s ntils.z.math.bz.4.i.accel_s.z
execute store result score @s ntils.z.math.bz.4.i.accel_s.z run scoreboard players operation @s ntils.z.math.bz.4.i.accel.z += @s ntils.z.math.bz.4.i.jerk.z
scoreboard players operation @s ntils.z.math.bz.4.i.vec_s.z /= #1000 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.4.i.accel_s.z /= #1000 ntils.z.const

