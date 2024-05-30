scoreboard players operation @s utils.p.x3 = #x2 utils.int
scoreboard players operation @s utils.p.y3 = #y2 utils.int
scoreboard players operation @s utils.p.z3 = #z2 utils.int

scoreboard players operation @s utils.p.x3 += #x1 utils.int
scoreboard players operation @s utils.p.y3 += #y1 utils.int
scoreboard players operation @s utils.p.z3 += #z1 utils.int

scoreboard players operation @s utils.p.x3 /= #2 utils.const
scoreboard players operation @s utils.p.y3 /= #2 utils.const
scoreboard players operation @s utils.p.z3 /= #2 utils.const

execute store result score #mod2 utils.temp store result score #mod1 utils.temp run data get storage utils:api distance.output 100
scoreboard players operation #mod1 utils.temp /= #2 utils.const
execute store result score #rand utils.temp run random value 0..2147483646
scoreboard players operation #rand utils.temp %= #mod2 utils.temp
scoreboard players operation #rand utils.temp -= #mod1 utils.temp
scoreboard players operation @s utils.p.x3 += #rand utils.temp

execute store result score #rand utils.temp run random value 0..2147483646
scoreboard players operation #rand utils.temp %= #mod2 utils.temp
scoreboard players operation #rand utils.temp -= #mod1 utils.temp
scoreboard players operation @s utils.p.y3 += #rand utils.temp

execute store result score #rand utils.temp run random value 0..2147483646
scoreboard players operation #rand utils.temp %= #mod2 utils.temp
scoreboard players operation #rand utils.temp -= #mod1 utils.temp
scoreboard players operation @s utils.p.z3 += #rand utils.temp