# MATH/BZ/I/F/LOOP
#
# Iterates a single step along the beizer curve initialized by the math/bz/i/f/loop function and sets the output scores/data.
# This iterates using the internal fake player scores.
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

execute store result storage ntils:api math.bz.i.out[0] double 0.001 store result score #math.bz.i.out.x ntils.API run scoreboard players operation #math.bz.i.base.x ntils.z.math.bz.i.temp += #math.bz.i.vec_s.x ntils.z.math.bz.i.temp
execute store result score #math.bz.i.vec_s.x ntils.z.math.bz.i.temp run scoreboard players operation #math.bz.i.vec.x ntils.z.math.bz.i.temp += #math.bz.i.accel.x ntils.z.math.bz.i.temp
scoreboard players operation #math.bz.i.vec_s.x ntils.z.math.bz.i.temp /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.i.out[1] double 0.001 store result score #math.bz.i.out.y ntils.API run scoreboard players operation #math.bz.i.base.y ntils.z.math.bz.i.temp += #math.bz.i.vec_s.y ntils.z.math.bz.i.temp
execute store result score #math.bz.i.vec_s.y ntils.z.math.bz.i.temp run scoreboard players operation #math.bz.i.vec.y ntils.z.math.bz.i.temp += #math.bz.i.accel.y ntils.z.math.bz.i.temp
scoreboard players operation #math.bz.i.vec_s.y ntils.z.math.bz.i.temp /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.i.out[2] double 0.001 store result score #math.bz.i.out.z ntils.API run scoreboard players operation #math.bz.i.base.z ntils.z.math.bz.i.temp += #math.bz.i.vec_s.z ntils.z.math.bz.i.temp
execute store result score #math.bz.i.vec_s.z ntils.z.math.bz.i.temp run scoreboard players operation #math.bz.i.vec.z ntils.z.math.bz.i.temp += #math.bz.i.accel.z ntils.z.math.bz.i.temp
scoreboard players operation #math.bz.i.vec_s.z ntils.z.math.bz.i.temp /= #1000 ntils.z.const