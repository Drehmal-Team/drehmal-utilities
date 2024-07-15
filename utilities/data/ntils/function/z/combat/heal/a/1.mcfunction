execute store result score #a ntils.z.temp run data get storage ntils:z atrs.1[-1] 1000
scoreboard players operation #o ntils.z.temp += #a ntils.z.temp
data remove storage ntils:z atrs.1[-1]
execute if data storage ntils:z atrs.1[] run function ntils:z/combat/heal/a/1
