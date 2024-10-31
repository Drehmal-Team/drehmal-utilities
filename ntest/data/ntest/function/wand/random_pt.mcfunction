scoreboard players operation #mod ntest.temp = #math.bz.4.in.iterations ntils.API
execute store result score #mod/2 ntest.temp run scoreboard players operation #mod ntest.temp *= #CONTROL_POINT_SCALE_TENTACLE# ntest.const
execute store result score #mod.75 ntest.temp run scoreboard players operation #mod/2 ntest.temp /= #2 ntest.const
execute store result score #mod.25 ntest.temp run scoreboard players operation #mod.75 ntest.temp /= #4 ntest.const
scoreboard players operation #mod.75 ntest.temp *= #3 ntest.const

scoreboard players operation #2x1 ntest.temp *= #2 ntest.const
scoreboard players operation #2y1 ntest.temp *= #2 ntest.const
scoreboard players operation #2z1 ntest.temp *= #2 ntest.const

scoreboard players operation #2x2 ntest.temp *= #2 ntest.const
scoreboard players operation #2y2 ntest.temp *= #2 ntest.const
scoreboard players operation #2z2 ntest.temp *= #2 ntest.const

scoreboard players operation #2x1 ntest.temp += #x2 ntest.temp
scoreboard players operation #2y1 ntest.temp += #y2 ntest.temp
scoreboard players operation #2z1 ntest.temp += #z2 ntest.temp
scoreboard players operation #2x1 ntest.temp /= #3 ntest.const
scoreboard players operation #2y1 ntest.temp /= #3 ntest.const
scoreboard players operation #2z1 ntest.temp /= #3 ntest.const

execute store result score #r1 ntest.temp run random value 0..2147483646
scoreboard players operation #r1 ntest.temp %= #mod.25 ntest.temp
scoreboard players operation #r1 ntest.temp += #mod.75 ntest.temp
execute if predicate ntils:api/math/rng/50 run scoreboard players operation #r1 ntest.temp *= #-1 ntest.const
execute store result score #r2 ntest.temp run random value 0..2147483646
scoreboard players operation #r2 ntest.temp %= #mod ntest.temp
scoreboard players operation #r2 ntest.temp -= #mod/2 ntest.temp
execute store result score #r3 ntest.temp run random value 0..2147483646
scoreboard players operation #r3 ntest.temp %= #mod ntest.temp
scoreboard players operation #r3 ntest.temp -= #mod/2 ntest.temp
execute store result score #c ntest.temp run random value 0..2
execute if score #c ntest.temp matches 1 run scoreboard players operation #r2 ntest.temp >< #r1 ntest.temp
execute if score #c ntest.temp matches 1 run scoreboard players operation #r3 ntest.temp >< #r1 ntest.temp

execute store result score #math.bz.4.in.b.x ntils.API run scoreboard players operation #2x1 ntest.temp += #r1 ntest.temp
execute store result score #math.bz.4.in.b.y ntils.API run scoreboard players operation #2y1 ntest.temp += #r2 ntest.temp
execute store result score #math.bz.4.in.b.z ntils.API run scoreboard players operation #2z1 ntest.temp += #r3 ntest.temp

scoreboard players operation #2x2 ntest.temp += #x1 ntest.temp
scoreboard players operation #2y2 ntest.temp += #y1 ntest.temp
scoreboard players operation #2z2 ntest.temp += #z1 ntest.temp
scoreboard players operation #2x2 ntest.temp /= #3 ntest.const
scoreboard players operation #2y2 ntest.temp /= #3 ntest.const
scoreboard players operation #2z2 ntest.temp /= #3 ntest.const

execute store result score #r1 ntest.temp run random value 0..2147483646
scoreboard players operation #r1 ntest.temp %= #mod.25 ntest.temp
scoreboard players operation #r1 ntest.temp += #mod.75 ntest.temp
execute if predicate ntils:api/math/rng/50 run scoreboard players operation #r1 ntest.temp *= #-1 ntest.const
execute store result score #r2 ntest.temp run random value 0..2147483646
scoreboard players operation #r2 ntest.temp %= #mod ntest.temp
scoreboard players operation #r2 ntest.temp -= #mod/2 ntest.temp
execute store result score #r3 ntest.temp run random value 0..2147483646
scoreboard players operation #r3 ntest.temp %= #mod ntest.temp
scoreboard players operation #r3 ntest.temp -= #mod/2 ntest.temp
execute store result score #c ntest.temp run random value 0..2
execute if score #c ntest.temp matches 1 run scoreboard players operation #r2 ntest.temp >< #r1 ntest.temp
execute if score #c ntest.temp matches 1 run scoreboard players operation #r3 ntest.temp >< #r1 ntest.temp

execute store result score #math.bz.4.in.c.x ntils.API run scoreboard players operation #2x2 ntest.temp += #r1 ntest.temp
execute store result score #math.bz.4.in.c.y ntils.API run scoreboard players operation #2y2 ntest.temp += #r2 ntest.temp
execute store result score #math.bz.4.in.c.z ntils.API run scoreboard players operation #2z2 ntest.temp += #r3 ntest.temp

#scoreboard players operation #math.bz.4.in.b.x ntils.API = #2x1 ntest.temp
#scoreboard players operation #math.bz.4.in.b.y ntils.API = #2y1 ntest.temp
#scoreboard players operation #math.bz.4.in.b.z ntils.API = #2z1 ntest.temp

#scoreboard players operation #math.bz.4.in.c.x ntils.API = #2x2 ntest.temp
#scoreboard players operation #math.bz.4.in.c.y ntils.API = #2y2 ntest.temp
#scoreboard players operation #math.bz.4.in.c.z ntils.API = #2z2 ntest.temp
