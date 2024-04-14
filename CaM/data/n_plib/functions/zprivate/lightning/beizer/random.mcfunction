scoreboard players operation @s n_plib.x3 = #x2 n_plib.int
scoreboard players operation @s n_plib.y3 = #y2 n_plib.int
scoreboard players operation @s n_plib.z3 = #z2 n_plib.int

scoreboard players operation @s n_plib.x3 += #x1 n_plib.int
scoreboard players operation @s n_plib.y3 += #y1 n_plib.int
scoreboard players operation @s n_plib.z3 += #z1 n_plib.int

scoreboard players operation @s n_plib.x3 /= #2 n_plib.const
scoreboard players operation @s n_plib.y3 /= #2 n_plib.const
scoreboard players operation @s n_plib.z3 /= #2 n_plib.const

execute store result score #mod2 n_plib.temp store result score #mod1 n_plib.temp run data get storage n_plib:storage distance.output 100
scoreboard players operation #mod1 n_plib.temp /= #2 n_plib.const
execute store result score #rand n_plib.temp run random value 0..2147483646
scoreboard players operation #rand n_plib.temp %= #mod2 n_plib.temp
scoreboard players operation #rand n_plib.temp -= #mod1 n_plib.temp
scoreboard players operation @s n_plib.x3 += #rand n_plib.temp

execute store result score #rand n_plib.temp run random value 0..2147483646
scoreboard players operation #rand n_plib.temp %= #mod2 n_plib.temp
scoreboard players operation #rand n_plib.temp -= #mod1 n_plib.temp
scoreboard players operation @s n_plib.y3 += #rand n_plib.temp

execute store result score #rand n_plib.temp run random value 0..2147483646
scoreboard players operation #rand n_plib.temp %= #mod2 n_plib.temp
scoreboard players operation #rand n_plib.temp -= #mod1 n_plib.temp
scoreboard players operation @s n_plib.z3 += #rand n_plib.temp