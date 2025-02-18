scoreboard players set #2^15.5 ntils.z.const 46340
scoreboard players set #-2^15.5 ntils.z.const -46340
scoreboard players set #-3 ntils.z.const -3
scoreboard players set #-2000 ntils.z.const -2000
scoreboard players set #-2 ntils.z.const -2
scoreboard players set #3 ntils.z.const 3
scoreboard players set #-250 ntils.z.const -250
scoreboard players set #-40 ntils.z.const -40
scoreboard players set #-400 ntils.z.const -400
scoreboard players set #-4000 ntils.z.const -4000

scoreboard players set #46340^2/1000 ntils.z.const 2147395
scoreboard players set #23170^2/2000 ntils.z.const 268424
scoreboard players set #(((2^31)-1)/4)/1000 ntils.z.const 536871

scoreboard objectives add ntils.API.flag.math dummy

# 3 POINT BEZIER SCOREBOARDS #

scoreboard objectives add ntils.z.math.bz.3.temp dummy

# Iteration scores
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

# Entity polynomial scores
scoreboard objectives add ntils.z.math.bz.3.poly.0.x dummy
scoreboard objectives add ntils.z.math.bz.3.poly.0.y dummy
scoreboard objectives add ntils.z.math.bz.3.poly.0.z dummy

scoreboard objectives add ntils.z.math.bz.3.poly.1.x dummy
scoreboard objectives add ntils.z.math.bz.3.poly.1.y dummy
scoreboard objectives add ntils.z.math.bz.3.poly.1.z dummy

scoreboard objectives add ntils.z.math.bz.3.poly.2.x dummy
scoreboard objectives add ntils.z.math.bz.3.poly.2.y dummy
scoreboard objectives add ntils.z.math.bz.3.poly.2.z dummy

# 4 POINT BEZIER SCOREBOARDS #

scoreboard objectives add ntils.z.math.bz.4.temp dummy

# Iteration scores
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

# Entity polynomial scores
scoreboard objectives add ntils.z.math.bz.4.poly.0.x dummy
scoreboard objectives add ntils.z.math.bz.4.poly.0.y dummy
scoreboard objectives add ntils.z.math.bz.4.poly.0.z dummy

scoreboard objectives add ntils.z.math.bz.4.poly.1.x dummy
scoreboard objectives add ntils.z.math.bz.4.poly.1.y dummy
scoreboard objectives add ntils.z.math.bz.4.poly.1.z dummy

scoreboard objectives add ntils.z.math.bz.4.poly.2.x dummy
scoreboard objectives add ntils.z.math.bz.4.poly.2.y dummy
scoreboard objectives add ntils.z.math.bz.4.poly.2.z dummy

scoreboard objectives add ntils.z.math.bz.4.poly.3.x dummy
scoreboard objectives add ntils.z.math.bz.4.poly.3.y dummy
scoreboard objectives add ntils.z.math.bz.4.poly.3.z dummy

# N POINT BEZIER SCOREBOARDS #

scoreboard objectives add ntils.z.math.bz.n.temp dummy

# SQRT SCOREBOARDS #

scoreboard objectives add ntils.z.math.sqrt.temp dummy

# QUATERNION SCOREBOARDS #

scoreboard objectives add ntils.z.math.quaternion.temp dummy

# MATRIX SCOREBOARDS #

scoreboard objectives add ntils.z.math.mat.temp dummy

# TRIG SCOREBOARDS #

scoreboard objectives add ntils.z.math.trig.temp dummy

# STORAGE INIT #

# Bezier output initialization
data modify storage ntils:api math.bz.3.out set value [0d,0d,0d]
data modify storage ntils:api math.bz.4.out set value [0d,0d,0d]
data modify storage ntils:api math.bz.n.out set value [0d,0d,0d]

# Quaternion output initialization
data modify storage ntils:api math.quaternion.out set value [0f,0f,0f,0f]

# Vector output initialization
data modify storage ntils:api math.vec.2.out set value [0d,0d]
data modify storage ntils:api math.vec.3.out set value [0d,0d,0d]

# Matrix output initialization
data modify storage ntils:api math.mat.2.out set value [\
    [0d,0d],\
    [0d,0d],\
]
data modify storage ntils:api math.mat.3.out set value [\
    [0d,0d,0d],\
    [0d,0d,0d],\
    [0d,0d,0d],\
]


data modify storage ntils:z math.distance.transform set value [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]
