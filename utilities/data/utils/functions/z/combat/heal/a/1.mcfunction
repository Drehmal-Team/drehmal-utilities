execute store result score #a utils.temp run data get storage utils:z atrs.1[-1] 1000
scoreboard players operation #o utils.temp += #a utils.temp
data remove storage utils:z atrs.1[-1]
execute if data storage utils:z atrs.1[] run function utils:z/combat/heal/a/1
