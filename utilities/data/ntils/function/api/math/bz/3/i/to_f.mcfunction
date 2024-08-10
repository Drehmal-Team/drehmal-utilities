# MATH/BZ/3/I/TO_F
#
# Copies the internal entity scores used for beizer iteration to fake players. Use this to switch between s and f iterations.
#
# PERFORMANCE: Excellent. It's *literally* just scoreboard operations. Still, don't overuse this, it's better to just stick to one type of iteration.

scoreboard players operation #math.bz.3.i.vec.x ntils.z.math.bz.3.i.temp = @s ntils.z.math.bz.3.i.vec.x
scoreboard players operation #math.bz.3.i.vec.y ntils.z.math.bz.3.i.temp = @s ntils.z.math.bz.3.i.vec.y
scoreboard players operation #math.bz.3.i.vec.z ntils.z.math.bz.3.i.temp = @s ntils.z.math.bz.3.i.vec.z

scoreboard players operation #math.bz.3.i.accel.x ntils.z.math.bz.3.i.temp = @s ntils.z.math.bz.3.i.accel.x
scoreboard players operation #math.bz.3.i.accel.y ntils.z.math.bz.3.i.temp = @s ntils.z.math.bz.3.i.accel.y
scoreboard players operation #math.bz.3.i.accel.z ntils.z.math.bz.3.i.temp = @s ntils.z.math.bz.3.i.accel.z

scoreboard players operation #math.bz.3.i.vec_s.x ntils.z.math.bz.3.i.temp = @s ntils.z.math.bz.3.i.vec_s.x
scoreboard players operation #math.bz.3.i.vec_s.y ntils.z.math.bz.3.i.temp = @s ntils.z.math.bz.3.i.vec_s.y
scoreboard players operation #math.bz.3.i.vec_s.z ntils.z.math.bz.3.i.temp = @s ntils.z.math.bz.3.i.vec_s.z

scoreboard players operation #math.bz.3.i.base.x ntils.z.math.bz.3.i.temp = @s ntils.z.math.bz.3.i.base.x
scoreboard players operation #math.bz.3.i.base.y ntils.z.math.bz.3.i.temp = @s ntils.z.math.bz.3.i.base.y
scoreboard players operation #math.bz.3.i.base.z ntils.z.math.bz.3.i.temp = @s ntils.z.math.bz.3.i.base.z