execute store result score #a ntils.temp run data get storage ntils:z atrs.2[-1] 1000
scoreboard players add #a ntils.temp 1000

scoreboard players operation #heal_amt ntils.temp *= #1000 ntils.const
scoreboard players operation #heal_amt ntils.temp /= #a ntils.temp

data remove storage ntils:z atrs.2[-1]
execute if data storage ntils:z atrs.2[] run function ntils:z/combat/heal/a/2
