# MATH/BZ/I/TO_F
#
# Copies the internal fake player scores used for beizer iteration to entity scores. Use this to switch between f and s iterations.
#
# PERFORMANCE: Excellent. It's *literally* just scoreboard operations. Still, don't overuse this, it's better to just stick to one type of iteration.

scoreboard players operation @s ntils.z.math.bz.i.vec.x = #math.bz.i.vec.x ntils.z.temp
scoreboard players operation @s ntils.z.math.bz.i.vec.y = #math.bz.i.vec.y ntils.z.temp
scoreboard players operation @s ntils.z.math.bz.i.vec.z = #math.bz.i.vec.z ntils.z.temp

scoreboard players operation @s ntils.z.math.bz.i.accel.x = #math.bz.i.accel.x ntils.z.temp
scoreboard players operation @s ntils.z.math.bz.i.accel.y = #math.bz.i.accel.y ntils.z.temp
scoreboard players operation @s ntils.z.math.bz.i.accel.z = #math.bz.i.accel.z ntils.z.temp

scoreboard players operation @s ntils.z.math.bz.i.vec_s.x = #math.bz.i.vec_s.x ntils.z.temp
scoreboard players operation @s ntils.z.math.bz.i.vec_s.y = #math.bz.i.vec_s.y ntils.z.temp
scoreboard players operation @s ntils.z.math.bz.i.vec_s.z = #math.bz.i.vec_s.z ntils.z.temp

scoreboard players operation @s ntils.z.math.bz.i.base.x = #math.bz.i.base.x ntils.z.temp
scoreboard players operation @s ntils.z.math.bz.i.base.y = #math.bz.i.base.y ntils.z.temp
scoreboard players operation @s ntils.z.math.bz.i.base.z = #math.bz.i.base.z ntils.z.temp