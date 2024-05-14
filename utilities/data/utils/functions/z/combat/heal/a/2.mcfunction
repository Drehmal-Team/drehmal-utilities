execute store result score #a utils.temp run data get storage utils:z atrs.2[-1] 1000
scoreboard players add #a utils.temp 1000

scoreboard players operation #heal_amt utils.temp *= #1000 utils.const
scoreboard players operation #heal_amt utils.temp /= #a utils.temp

data remove storage utils:z atrs.2[-1]
execute if data storage utils:z atrs.2[] run function utils:z/combat/heal/a/2
