# this is garbage
return fail

scoreboard players set #math.trig.sin.out ntils.API 1800
scoreboard players operation #math.trig.sin.out ntils.API -= #math.trig.sin.in ntils.API
execute store result score #180-x ntils.z.math.trig.temp run scoreboard players operation #math.trig.sin.out ntils.API *= #math.trig.sin.in ntils.API
scoreboard players operation #math.trig.sin.out ntils.API *= #-400 ntils.z.const
scoreboard players remove #180-x ntils.z.math.trig.temp 4050000
scoreboard players operation #math.trig.sin.out ntils.API /= #180-x ntils.z.math.trig.temp