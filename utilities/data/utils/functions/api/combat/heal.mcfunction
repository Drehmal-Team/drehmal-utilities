# COMBAT/HEAL
#
# Heals the player by a specific amount. Scoreboard input: #HEAL_AMOUNT# utils.API, scaled by 1000 (so 1 heart = 2000, 1/2 heart = 1000, etc.)
#
# subtick n junk stolen from here: https://github.com/XanBelOr/Minecraft-Simple-Custom-Heal/

execute store result score #heal_amt utils.temp run attribute @s generic.max_health get 1000
execute store result score #heal_mod utils.temp run data get entity @s Health 1000

scoreboard players operation #heal_amt utils.temp -= #heal_mod utils.temp

execute if score #HEAL_AMOUNT# utils.API > #heal_amt utils.temp run return run effect give @s instant_health 1 28 true

scoreboard players operation #heal_amt utils.temp -= #HEAL_AMOUNT# utils.API

scoreboard players set #atr utils.temp 0

execute if items entity @s armor.* *[minecraft:attribute_modifiers~{"modifiers":{"contains":[{"attribute":"minecraft:generic.max_health","operation":"add_multiplied_base"}]}}|minecraft:attribute_modifiers~{"modifiers":{"contains":[{"attribute":"minecraft:generic.max_health","operation":"add_multiplied_total"}]}}] run function utils:z/combat/heal/attributes
execute unless score #atr utils.temp matches 1.. if items entity @s weapon.* *[minecraft:attribute_modifiers~{"modifiers":{"contains":[{"attribute":"minecraft:generic.max_health","operation":"add_multiplied_base"}]}}|minecraft:attribute_modifiers~{"modifiers":{"contains":[{"attribute":"minecraft:generic.max_health","operation":"add_multiplied_total"}]}}] run function utils:z/combat/heal/attributes

data modify storage utils:z macro set value {val:0}
execute store result storage utils:z macro.val double -0.001 run scoreboard players get #heal_amt utils.temp

function utils:z/combat/heal/apply with storage utils:z macro
scoreboard players set @s utils.heal 1
effect give @s instant_health 1 28 true