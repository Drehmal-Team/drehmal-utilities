# MATH/BZ/3/I/TO_S
#
#   Copies the internal fake player scores used for bezier iteration to entity scores. Use this to switch between f and s iterations.
#
# INPUT:
#   > Misc:
#       | An iteration created with bz/3/i/f/start on the @s entity.
#
# OUTPUT:
#   > Misc:
#       | A usable bz/3/i/s/ iteration, that can be advanced with bz/3/i/s/loop
#
# PERFORMANCE: Excellent

scoreboard players operation @s ntils.z.math.bz.3.i.vec.x = #math.bz.3.i.vec.x ntils.z.math.bz.3.temp
scoreboard players operation @s ntils.z.math.bz.3.i.vec.y = #math.bz.3.i.vec.y ntils.z.math.bz.3.temp
scoreboard players operation @s ntils.z.math.bz.3.i.vec.z = #math.bz.3.i.vec.z ntils.z.math.bz.3.temp

scoreboard players operation @s ntils.z.math.bz.3.i.accel.x = #math.bz.3.i.accel.x ntils.z.math.bz.3.temp
scoreboard players operation @s ntils.z.math.bz.3.i.accel.y = #math.bz.3.i.accel.y ntils.z.math.bz.3.temp
scoreboard players operation @s ntils.z.math.bz.3.i.accel.z = #math.bz.3.i.accel.z ntils.z.math.bz.3.temp

scoreboard players operation @s ntils.z.math.bz.3.i.vec_s.x = #math.bz.3.i.vec_s.x ntils.z.math.bz.3.temp
scoreboard players operation @s ntils.z.math.bz.3.i.vec_s.y = #math.bz.3.i.vec_s.y ntils.z.math.bz.3.temp
scoreboard players operation @s ntils.z.math.bz.3.i.vec_s.z = #math.bz.3.i.vec_s.z ntils.z.math.bz.3.temp

scoreboard players operation @s ntils.z.math.bz.3.i.base.x = #math.bz.3.i.base.x ntils.z.math.bz.3.temp
scoreboard players operation @s ntils.z.math.bz.3.i.base.y = #math.bz.3.i.base.y ntils.z.math.bz.3.temp
scoreboard players operation @s ntils.z.math.bz.3.i.base.z = #math.bz.3.i.base.z ntils.z.math.bz.3.temp