scoreboard players operation @s ntils.p.x3 = #x2 ntils.int
scoreboard players operation @s ntils.p.y3 = #y2 ntils.int
scoreboard players operation @s ntils.p.z3 = #z2 ntils.int

scoreboard players operation @s ntils.p.x3 += #x1 ntils.int
scoreboard players operation @s ntils.p.y3 += #y1 ntils.int
scoreboard players operation @s ntils.p.z3 += #z1 ntils.int

scoreboard players operation @s ntils.p.x3 /= #2 ntils.const
scoreboard players operation @s ntils.p.y3 /= #2 ntils.const
scoreboard players operation @s ntils.p.z3 /= #2 ntils.const

execute store result score #mod2 ntils.temp store result score #mod1 ntils.temp run data get storage ntils:api distance.output 100
scoreboard players operation #mod1 ntils.temp /= #2 ntils.const
execute store result score #rand ntils.temp run random value 0..2147483646
scoreboard players operation #rand ntils.temp %= #mod2 ntils.temp
scoreboard players operation #rand ntils.temp -= #mod1 ntils.temp
scoreboard players operation @s ntils.p.x3 += #rand ntils.temp

execute store result score #rand ntils.temp run random value 0..2147483646
scoreboard players operation #rand ntils.temp %= #mod2 ntils.temp
scoreboard players operation #rand ntils.temp -= #mod1 ntils.temp
scoreboard players operation @s ntils.p.y3 += #rand ntils.temp

execute store result score #rand ntils.temp run random value 0..2147483646
scoreboard players operation #rand ntils.temp %= #mod2 ntils.temp
scoreboard players operation #rand ntils.temp -= #mod1 ntils.temp
scoreboard players operation @s ntils.p.z3 += #rand ntils.temp