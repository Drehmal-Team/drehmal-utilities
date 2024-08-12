# MATH/BZ/3/I/F/LOOP
#
# Iterates a single step along the bezier curve initialized by the math/bz/3/i/f/loop function and sets the output scores/data.
# This iterates using the internal fake player scores.
#
#   OUTPUT SCORES:
#
# These are the scores for the XYZ output of the current position along the bezier curve.
#   #math.bz.3.out.x ntils.API
#   #math.bz.3.out.y ntils.API
#   #math.bz.3.out.z ntils.API
#
#   ADDITIONAL OUTPUT:
#
# At ntils:api math.bz.3.out, a [double,double,double] array with the position data from above will be created, so that you can easily just set an entities position data to it.
#
# PERFORMANCE: Excellent. Probably about as optimized as you can even make this.

execute store result storage ntils:api math.bz.3.out[0] double 0.001 store result score #math.bz.3.out.x ntils.API run scoreboard players operation #math.bz.3.i.base.x ntils.z.math.bz.3.temp += #math.bz.3.i.vec_s.x ntils.z.math.bz.3.temp
execute store result score #math.bz.3.i.vec_s.x ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.i.vec.x ntils.z.math.bz.3.temp += #math.bz.3.i.accel.x ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.i.vec_s.x ntils.z.math.bz.3.temp /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.3.out[1] double 0.001 store result score #math.bz.3.out.y ntils.API run scoreboard players operation #math.bz.3.i.base.y ntils.z.math.bz.3.temp += #math.bz.3.i.vec_s.y ntils.z.math.bz.3.temp
execute store result score #math.bz.3.i.vec_s.y ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.i.vec.y ntils.z.math.bz.3.temp += #math.bz.3.i.accel.y ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.i.vec_s.y ntils.z.math.bz.3.temp /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.3.out[2] double 0.001 store result score #math.bz.3.out.z ntils.API run scoreboard players operation #math.bz.3.i.base.z ntils.z.math.bz.3.temp += #math.bz.3.i.vec_s.z ntils.z.math.bz.3.temp
execute store result score #math.bz.3.i.vec_s.z ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.i.vec.z ntils.z.math.bz.3.temp += #math.bz.3.i.accel.z ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.i.vec_s.z ntils.z.math.bz.3.temp /= #1000 ntils.z.const