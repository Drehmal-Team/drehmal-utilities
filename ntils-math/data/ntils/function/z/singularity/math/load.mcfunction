scoreboard players set #2^15.5 ntils.z.const 46340
scoreboard players set #-2^15.5 ntils.z.const -46340

# 3 POINT BEZIER SCOREBOARDS #

scoreboard objectives add ntils.z.math.bz.3.i.vec.x dummy
scoreboard objectives add ntils.z.math.bz.3.i.vec.y dummy
scoreboard objectives add ntils.z.math.bz.3.i.vec.z dummy

scoreboard objectives add ntils.z.math.bz.3.i.accel.x dummy
scoreboard objectives add ntils.z.math.bz.3.i.accel.y dummy
scoreboard objectives add ntils.z.math.bz.3.i.accel.z dummy

scoreboard objectives add ntils.z.math.bz.3.i.vec_s.x dummy
scoreboard objectives add ntils.z.math.bz.3.i.vec_s.y dummy
scoreboard objectives add ntils.z.math.bz.3.i.vec_s.z dummy

scoreboard objectives add ntils.z.math.bz.3.i.base.x dummy
scoreboard objectives add ntils.z.math.bz.3.i.base.y dummy
scoreboard objectives add ntils.z.math.bz.3.i.base.z dummy

scoreboard objectives add ntils.z.math.bz.3.temp dummy

# 4 POINT BEZIER SCOREBOARDS #

scoreboard objectives add ntils.z.math.bz.4.i.vec.x dummy
scoreboard objectives add ntils.z.math.bz.4.i.vec.y dummy
scoreboard objectives add ntils.z.math.bz.4.i.vec.z dummy

scoreboard objectives add ntils.z.math.bz.4.i.accel.x dummy
scoreboard objectives add ntils.z.math.bz.4.i.accel.y dummy
scoreboard objectives add ntils.z.math.bz.4.i.accel.z dummy

scoreboard objectives add ntils.z.math.bz.4.i.accel_s.x dummy
scoreboard objectives add ntils.z.math.bz.4.i.accel_s.y dummy
scoreboard objectives add ntils.z.math.bz.4.i.accel_s.z dummy

scoreboard objectives add ntils.z.math.bz.4.i.jerk.x dummy
scoreboard objectives add ntils.z.math.bz.4.i.jerk.y dummy
scoreboard objectives add ntils.z.math.bz.4.i.jerk.z dummy

scoreboard objectives add ntils.z.math.bz.4.i.vec_s.x dummy
scoreboard objectives add ntils.z.math.bz.4.i.vec_s.y dummy
scoreboard objectives add ntils.z.math.bz.4.i.vec_s.z dummy

scoreboard objectives add ntils.z.math.bz.4.i.base.x dummy
scoreboard objectives add ntils.z.math.bz.4.i.base.y dummy
scoreboard objectives add ntils.z.math.bz.4.i.base.z dummy

scoreboard objectives add ntils.z.math.bz.4.temp dummy

# N POINT BEZIER SCOREBOARDS #

scoreboard objectives add ntils.z.math.bz.n.temp dummy

# SQRT SCOREBOARDS #

scoreboard objectives add ntils.z.math.sqrt.temp dummy

# QUATERNION SCOREBOARDS #

scoreboard objectives add ntils.z.math.quaternion.temp dummy

# POINTLESS STORAGE INIT #

data modify storage ntils:api math.bz.3.out set value [0d,0d,0d]
data modify storage ntils:api math.bz.4.out set value [0d,0d,0d]
data modify storage ntils:api math.bz.n.out set value [0d,0d,0d]
data modify storage ntils:api math.quaternion.in set value [0f,0f,0f,0f]
data modify storage ntils:api math.quaternion.out set value [0f,0f,0f,0f]