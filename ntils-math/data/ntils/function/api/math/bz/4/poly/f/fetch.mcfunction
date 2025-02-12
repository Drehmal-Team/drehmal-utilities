# X --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.4.out.x ntils.API = #math.bz.4.poly.3.x ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.x ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.x ntils.API /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.out.x ntils.API += #math.bz.4.poly.2.x ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.x ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.x ntils.API /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.out.x ntils.API += #math.bz.4.poly.1.x ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.x ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.x ntils.API /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.4.out[0] double 0.001 run scoreboard players operation #math.bz.4.out.x ntils.API += #math.bz.4.poly.0.x ntils.z.math.bz.4.temp

# Y --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.4.out.y ntils.API = #math.bz.4.poly.3.y ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.y ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.y ntils.API /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.out.y ntils.API += #math.bz.4.poly.2.y ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.y ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.y ntils.API /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.out.y ntils.API += #math.bz.4.poly.1.y ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.y ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.y ntils.API /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.4.out[1] double 0.001 run scoreboard players operation #math.bz.4.out.y ntils.API += #math.bz.4.poly.0.y ntils.z.math.bz.4.temp

# Z --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.4.out.z ntils.API = #math.bz.4.poly.3.z ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.z ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.z ntils.API /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.out.z ntils.API += #math.bz.4.poly.2.z ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.z ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.z ntils.API /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.out.z ntils.API += #math.bz.4.poly.1.z ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.out.z ntils.API *= #math.bz.4.in.t ntils.API
scoreboard players operation #math.bz.4.out.z ntils.API /= #1000 ntils.z.const

execute store result storage ntils:api math.bz.4.out[2] double 0.001 run scoreboard players operation #math.bz.4.out.z ntils.API += #math.bz.4.poly.0.z ntils.z.math.bz.4.temp

