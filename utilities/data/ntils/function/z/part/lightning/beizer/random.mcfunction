scoreboard players operation @s ntils.z.p.x3 = #x2 ntils.z.int
scoreboard players operation @s ntils.z.p.y3 = #y2 ntils.z.int
scoreboard players operation @s ntils.z.p.z3 = #z2 ntils.z.int

scoreboard players operation @s ntils.z.p.x3 += #x1 ntils.z.int
scoreboard players operation @s ntils.z.p.y3 += #y1 ntils.z.int
scoreboard players operation @s ntils.z.p.z3 += #z1 ntils.z.int

scoreboard players operation @s ntils.z.p.x3 /= #2 ntils.z.const
scoreboard players operation @s ntils.z.p.y3 /= #2 ntils.z.const
scoreboard players operation @s ntils.z.p.z3 /= #2 ntils.z.const

execute store result score #mod2 ntils.z.temp store result score #mod1 ntils.z.temp run data get storage ntils:api math.distance.out 100
scoreboard players operation #mod1 ntils.z.temp /= #2 ntils.z.const
execute store result score #rand ntils.z.temp run random value 0..2147483646
scoreboard players operation #rand ntils.z.temp %= #mod2 ntils.z.temp
scoreboard players operation #rand ntils.z.temp -= #mod1 ntils.z.temp
scoreboard players operation @s ntils.z.p.x3 += #rand ntils.z.temp

execute store result score #rand ntils.z.temp run random value 0..2147483646
scoreboard players operation #rand ntils.z.temp %= #mod2 ntils.z.temp
scoreboard players operation #rand ntils.z.temp -= #mod1 ntils.z.temp
scoreboard players operation @s ntils.z.p.y3 += #rand ntils.z.temp

execute store result score #rand ntils.z.temp run random value 0..2147483646
scoreboard players operation #rand ntils.z.temp %= #mod2 ntils.z.temp
scoreboard players operation #rand ntils.z.temp -= #mod1 ntils.z.temp
scoreboard players operation @s ntils.z.p.z3 += #rand ntils.z.temp