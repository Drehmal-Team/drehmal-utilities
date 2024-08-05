scoreboard players operation #part.lightning.beizer.r.x1 ntils.z.temp += #part.lightning.beizer.r.x2 ntils.z.temp
scoreboard players operation #part.lightning.beizer.r.y1 ntils.z.temp += #part.lightning.beizer.r.y2 ntils.z.temp
scoreboard players operation #part.lightning.beizer.r.z1 ntils.z.temp += #part.lightning.beizer.r.z2 ntils.z.temp
execute store result score #math.bz.i.in.b.x ntils.API run scoreboard players operation #part.lightning.beizer.r.x1 ntils.z.temp /= #2 ntils.z.const
execute store result score #math.bz.i.in.b.y ntils.API run scoreboard players operation #part.lightning.beizer.r.y1 ntils.z.temp /= #2 ntils.z.const
execute store result score #math.bz.i.in.b.z ntils.API run scoreboard players operation #part.lightning.beizer.r.z1 ntils.z.temp /= #2 ntils.z.const

execute store result score #mod2 ntils.z.temp store result score #mod1 ntils.z.temp run data get storage ntils:api math.distance.out
scoreboard players operation #mod1 ntils.z.temp /= #2 ntils.z.const
execute store result score #rand ntils.z.temp run random value 0..2147483646
scoreboard players operation #rand ntils.z.temp %= #mod2 ntils.z.temp
scoreboard players operation #rand ntils.z.temp -= #mod1 ntils.z.temp
scoreboard players operation #math.bz.i.in.b.x ntils.API += #rand ntils.z.temp

execute store result score #rand ntils.z.temp run random value 0..2147483646
scoreboard players operation #rand ntils.z.temp %= #mod2 ntils.z.temp
scoreboard players operation #rand ntils.z.temp -= #mod1 ntils.z.temp
scoreboard players operation #math.bz.i.in.b.y ntils.API += #rand ntils.z.temp

execute store result score #rand ntils.z.temp run random value 0..2147483646
scoreboard players operation #rand ntils.z.temp %= #mod2 ntils.z.temp
scoreboard players operation #rand ntils.z.temp -= #mod1 ntils.z.temp
scoreboard players operation #math.bz.i.in.b.z ntils.API += #rand ntils.z.temp