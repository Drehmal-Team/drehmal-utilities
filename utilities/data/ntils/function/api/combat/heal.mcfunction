# COMBAT/HEAL
#
# Heals the player by a specific amount. Scoreboard input: #HEAL_AMOUNT# ntils.API, scaled by 1000 (so 1 heart = 2000, 1/2 heart = 1000, etc.)
#
# subtick n junk stolen from here: https://github.com/XanBelOr/Minecraft-Simple-Custom-Heal/

execute store result score #heal_amt ntils.z.temp run attribute @s generic.max_health get 1000
execute store result score #heal_mod ntils.z.temp run data get entity @s Health 1000

scoreboard players operation #heal_amt ntils.z.temp -= #heal_mod ntils.z.temp

execute if score #HEAL_AMOUNT# ntils.API > #heal_amt ntils.z.temp run return run effect give @s instant_health 1 28 true

scoreboard players operation #heal_amt ntils.z.temp -= #HEAL_AMOUNT# ntils.API

scoreboard players set #atr ntils.z.temp 0

execute if items entity @s armor.* *[minecraft:attribute_modifiers~{"modifiers":{"contains":[{"attribute":"minecraft:generic.max_health","operation":"add_multiplied_base"}]}}|minecraft:attribute_modifiers~{"modifiers":{"contains":[{"attribute":"minecraft:generic.max_health","operation":"add_multiplied_total"}]}}] run function ntils:z/combat/heal/attributes
execute unless score #atr ntils.z.temp matches 1.. if items entity @s weapon.* *[minecraft:attribute_modifiers~{"modifiers":{"contains":[{"attribute":"minecraft:generic.max_health","operation":"add_multiplied_base"}]}}|minecraft:attribute_modifiers~{"modifiers":{"contains":[{"attribute":"minecraft:generic.max_health","operation":"add_multiplied_total"}]}}] run function ntils:z/combat/heal/attributes

data modify storage ntils:z macro set value {val:0}
execute store result storage ntils:z macro.val double -0.001 run scoreboard players get #heal_amt ntils.z.temp

function ntils:z/combat/heal/apply with storage ntils:z macro
scoreboard players set @s ntils.z.combat.heal.subtick 1
effect give @s instant_health 1 28 true