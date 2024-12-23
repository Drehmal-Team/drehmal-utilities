# MATH/BZ/3/I/TO_F
#
#   Copies the internal entity scores used for bezier iteration to fake players. Use this to switch between s and f iterations.
#
# INPUT:
#   > Misc:
#       | An iteration created with bz/3/i/s/start on the @s entity.
#
# OUTPUT:
#   > Misc:
#       | A usable bz/3/i/f/ iteration, that can be advanced with bz/3/i/f/loop
#
# PERFORMANCE: Excellent

scoreboard players operation #math.bz.3.i.vec.x ntils.z.math.bz.3.temp = @s ntils.z.math.bz.3.i.vec.x
scoreboard players operation #math.bz.3.i.vec.y ntils.z.math.bz.3.temp = @s ntils.z.math.bz.3.i.vec.y
scoreboard players operation #math.bz.3.i.vec.z ntils.z.math.bz.3.temp = @s ntils.z.math.bz.3.i.vec.z

scoreboard players operation #math.bz.3.i.accel.x ntils.z.math.bz.3.temp = @s ntils.z.math.bz.3.i.accel.x
scoreboard players operation #math.bz.3.i.accel.y ntils.z.math.bz.3.temp = @s ntils.z.math.bz.3.i.accel.y
scoreboard players operation #math.bz.3.i.accel.z ntils.z.math.bz.3.temp = @s ntils.z.math.bz.3.i.accel.z

scoreboard players operation #math.bz.3.i.vec_s.x ntils.z.math.bz.3.temp = @s ntils.z.math.bz.3.i.vec_s.x
scoreboard players operation #math.bz.3.i.vec_s.y ntils.z.math.bz.3.temp = @s ntils.z.math.bz.3.i.vec_s.y
scoreboard players operation #math.bz.3.i.vec_s.z ntils.z.math.bz.3.temp = @s ntils.z.math.bz.3.i.vec_s.z

scoreboard players operation #math.bz.3.i.base.x ntils.z.math.bz.3.temp = @s ntils.z.math.bz.3.i.base.x
scoreboard players operation #math.bz.3.i.base.y ntils.z.math.bz.3.temp = @s ntils.z.math.bz.3.i.base.y
scoreboard players operation #math.bz.3.i.base.z ntils.z.math.bz.3.temp = @s ntils.z.math.bz.3.i.base.z