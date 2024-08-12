execute store result score #math.sqrt.t1 ntils.z.temp store result score #math.sqrt.t2 ntils.z.temp store result score #math.sqrt.t3 ntils.z.temp store result score #math.sqrt.t4 ntils.z.temp run scoreboard players operation #math.sqrt.out ntils.API = #math.sqrt.in ntils.API
execute if score #math.sqrt.t4 ntils.z.temp matches 0..1515359 run scoreboard players operation #math.sqrt.out ntils.API /= #559 ntils.z.const
execute if score #math.sqrt.t4 ntils.z.temp matches 0..1515359 run scoreboard players add #math.sqrt.out ntils.API 15
execute if score #math.sqrt.t4 ntils.z.temp matches 1515360.. run scoreboard players operation #math.sqrt.out ntils.API /= #2^15 ntils.z.const
execute if score #math.sqrt.t4 ntils.z.temp matches 1515360.. run scoreboard players add #math.sqrt.out ntils.API 2456
scoreboard players operation #math.sqrt.t1 ntils.z.temp /= #math.sqrt.out ntils.API
scoreboard players operation #math.sqrt.out ntils.API += #math.sqrt.t1 ntils.z.temp
scoreboard players operation #math.sqrt.out ntils.API /= #2 ntils.z.const
scoreboard players operation #math.sqrt.t2 ntils.z.temp /= #math.sqrt.out ntils.API
scoreboard players operation #math.sqrt.out ntils.API += #math.sqrt.t2 ntils.z.temp
scoreboard players operation #math.sqrt.out ntils.API /= #2 ntils.z.const
scoreboard players operation #math.sqrt.t3 ntils.z.temp /= #math.sqrt.out ntils.API
scoreboard players operation #math.sqrt.out ntils.API += #math.sqrt.t3 ntils.z.temp
scoreboard players operation #math.sqrt.out ntils.API /= #2 ntils.z.const
scoreboard players operation #math.sqrt.t4 ntils.z.temp /= #math.sqrt.out ntils.API
execute if score #math.sqrt.out ntils.API > #math.sqrt.t4 ntils.z.temp run scoreboard players remove #math.sqrt.out ntils.API 1