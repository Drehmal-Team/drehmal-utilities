execute store result score #a ntils.z.temp run data get storage ntils:z atrs.2[-1] 1000
scoreboard players add #a ntils.z.temp 1000

scoreboard players operation #heal_amt ntils.z.temp *= #1000 ntils.z.const
scoreboard players operation #heal_amt ntils.z.temp /= #a ntils.z.temp

data remove storage ntils:z atrs.2[-1]
execute if data storage ntils:z atrs.2[] run function ntils:z/combat/heal/a/2
