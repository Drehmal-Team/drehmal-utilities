# MATH/SQRT
#
#   Given a scoreboard input, calculates the integer square root of that score.
#
# INPUT:
#   > Scoreboard:
#       | #math.sqrt.in ntils.API
#
# OUTPUT:
#   > Scoreboard:
#       | #math.sqrt.out ntils.API
#
# PERFORMANCE: Excellent
#   I have no goddamn idea how this works.

execute store result score #t1 ntils.z.math.sqrt.temp store result score #t2 ntils.z.math.sqrt.temp store result score #t3 ntils.z.math.sqrt.temp store result score #t4 ntils.z.math.sqrt.temp run scoreboard players operation #math.sqrt.out ntils.API = #math.sqrt.in ntils.API
execute if score #t4 ntils.z.math.sqrt.temp matches 0..1515359 run scoreboard players operation #math.sqrt.out ntils.API /= #559 ntils.z.const
execute if score #t4 ntils.z.math.sqrt.temp matches 0..1515359 run scoreboard players add #math.sqrt.out ntils.API 15
execute if score #t4 ntils.z.math.sqrt.temp matches 1515360.. run scoreboard players operation #math.sqrt.out ntils.API /= #2^15 ntils.z.const
execute if score #t4 ntils.z.math.sqrt.temp matches 1515360.. run scoreboard players add #math.sqrt.out ntils.API 2456
scoreboard players operation #t1 ntils.z.math.sqrt.temp /= #math.sqrt.out ntils.API
scoreboard players operation #math.sqrt.out ntils.API += #t1 ntils.z.math.sqrt.temp
scoreboard players operation #math.sqrt.out ntils.API /= #2 ntils.z.const
scoreboard players operation #t2 ntils.z.math.sqrt.temp /= #math.sqrt.out ntils.API
scoreboard players operation #math.sqrt.out ntils.API += #t2 ntils.z.math.sqrt.temp
scoreboard players operation #math.sqrt.out ntils.API /= #2 ntils.z.const
scoreboard players operation #t3 ntils.z.math.sqrt.temp /= #math.sqrt.out ntils.API
scoreboard players operation #math.sqrt.out ntils.API += #t3 ntils.z.math.sqrt.temp
scoreboard players operation #math.sqrt.out ntils.API /= #2 ntils.z.const
scoreboard players operation #t4 ntils.z.math.sqrt.temp /= #math.sqrt.out ntils.API
execute if score #math.sqrt.out ntils.API > #t4 ntils.z.math.sqrt.temp run scoreboard players remove #math.sqrt.out ntils.API 1