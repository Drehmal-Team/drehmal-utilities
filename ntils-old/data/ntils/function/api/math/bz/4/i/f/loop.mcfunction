# MATH/BZ/4/I/S/LOOP
#
# Iterates a single step along the bezier curve initialized by the math/bz/4/i/s/loop function and sets the output scores/data.
# This iterates using the scores on the current @s entity.
#
#   OUTPUT SCORES:
#
# These are the scores for the XYZ output of the current position along the bezier curve.
#   #math.bz.4.out.x ntils.API
#   #math.bz.4.out.y ntils.API
#   #math.bz.4.out.z ntils.API
#
#   ADDITIONAL OUTPUT:
#
# At ntils:api math.bz.4.out, a [double,double,double] array with the position data from above will be created, so that you can easily just set an entities position data to it.
#
# PERFORMANCE: Excellent. Could have been less commands if fixed point wasnt a fuck

execute store result storage ntils:api math.bz.4.out[0] double 0.001 store result score #math.bz.4.out.x ntils.API run scoreboard players operation #math.bz.4.i.base.x ntils.z.math.bz.4.temp += #math.bz.4.i.vec_s.x ntils.z.math.bz.4.temp
execute store result score #math.bz.4.i.vec_s.x ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.vec.x ntils.z.math.bz.4.temp += #math.bz.4.i.accel_s.x ntils.z.math.bz.4.temp
execute store result score #math.bz.4.i.accel_s.x ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.accel.x ntils.z.math.bz.4.temp += #math.bz.4.i.jerk.x ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.i.vec_s.x ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.accel_s.x ntils.z.math.bz.4.temp /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.4.out[1] double 0.001 store result score #math.bz.4.out.y ntils.API run scoreboard players operation #math.bz.4.i.base.y ntils.z.math.bz.4.temp += #math.bz.4.i.vec_s.y ntils.z.math.bz.4.temp
execute store result score #math.bz.4.i.vec_s.y ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.vec.y ntils.z.math.bz.4.temp += #math.bz.4.i.accel_s.y ntils.z.math.bz.4.temp
execute store result score #math.bz.4.i.accel_s.y ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.accel.y ntils.z.math.bz.4.temp += #math.bz.4.i.jerk.y ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.i.vec_s.y ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.accel_s.y ntils.z.math.bz.4.temp /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.4.out[2] double 0.001 store result score #math.bz.4.out.z ntils.API run scoreboard players operation #math.bz.4.i.base.z ntils.z.math.bz.4.temp += #math.bz.4.i.vec_s.z ntils.z.math.bz.4.temp
execute store result score #math.bz.4.i.vec_s.z ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.vec.z ntils.z.math.bz.4.temp += #math.bz.4.i.accel_s.z ntils.z.math.bz.4.temp
execute store result score #math.bz.4.i.accel_s.z ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.accel.z ntils.z.math.bz.4.temp += #math.bz.4.i.jerk.z ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.i.vec_s.z ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.accel_s.z ntils.z.math.bz.4.temp /= #1000 ntils.z.const

