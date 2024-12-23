# MATH/BZ/3/I/F/LOOP
#
#   Iterates a single step along the bezier curve initialized by the math/bz/3/i/f/start function.
#   Outputs the current position on the curve as scores and as nbt that can be applied directly as Pos data.
#
# INPUT:
#   > Misc:
#       | For this function to work correctly, an iteration process must have already been started globally.
#       | To start one, call math/bz/3/i/f/start.
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.3.out.[x,y,z] ntils.API (3)
#   > Storage:
#       | ntils:api math.bz.3.out, double list (3)
#
# PERFORMANCE: Excellent
#   Starting an iteration is slow, but performing an iteration step is very fast, which is basically the whole reason for this stuff.

execute store result storage ntils:api math.bz.3.out[0] double 0.001 store result score #math.bz.3.out.x ntils.API run scoreboard players operation #math.bz.3.i.base.x ntils.z.math.bz.3.temp += #math.bz.3.i.vec_s.x ntils.z.math.bz.3.temp
execute store result score #math.bz.3.i.vec_s.x ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.i.vec.x ntils.z.math.bz.3.temp += #math.bz.3.i.accel.x ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.i.vec_s.x ntils.z.math.bz.3.temp /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.3.out[1] double 0.001 store result score #math.bz.3.out.y ntils.API run scoreboard players operation #math.bz.3.i.base.y ntils.z.math.bz.3.temp += #math.bz.3.i.vec_s.y ntils.z.math.bz.3.temp
execute store result score #math.bz.3.i.vec_s.y ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.i.vec.y ntils.z.math.bz.3.temp += #math.bz.3.i.accel.y ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.i.vec_s.y ntils.z.math.bz.3.temp /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.3.out[2] double 0.001 store result score #math.bz.3.out.z ntils.API run scoreboard players operation #math.bz.3.i.base.z ntils.z.math.bz.3.temp += #math.bz.3.i.vec_s.z ntils.z.math.bz.3.temp
execute store result score #math.bz.3.i.vec_s.z ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.i.vec.z ntils.z.math.bz.3.temp += #math.bz.3.i.accel.z ntils.z.math.bz.3.temp
scoreboard players operation #math.bz.3.i.vec_s.z ntils.z.math.bz.3.temp /= #1000 ntils.z.const