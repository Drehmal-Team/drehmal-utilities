execute if entity @s[tag=ntils.API.combat.disable_advancement] run return run advancement revoke @s only ntils:z/combat/player_hurt_entity

function ntils:z/combat/get_damage

execute as @e[type=!#ntils:api/nohitbox,tag=!ntils.z.combat.player_hurt_me,distance=..10] at @s on attacker if entity @s[advancements={ntils:z/combat/player_hurt_entity=true}] as @e[distance=0,nbt={HurtTime:10s}] run function ntils:z/combat/add_tags

execute in ntils:z/empty run item replace block 0 0 0 container.0 from entity @s weapon.mainhand
execute in ntils:z/empty run data modify storage ntils:z tempMainhand set from block 0 0 0 Items[0]

scoreboard players set #dam_mod ntils.z.temp 0
execute if entity @s[advancements={ntils:z/combat/player_hurt_entity={undead=true}}] store result score #dam_mod ntils.z.temp run data get storage ntils:z tempMainhand.components."minecraft:enchantments".levels."minecraft:smite" 25
execute if entity @s[advancements={ntils:z/combat/player_hurt_entity={arthropod=true}}] store result score #dam_mod ntils.z.temp run data get storage ntils:z tempMainhand.components."minecraft:enchantments".levels."minecraft:bane_of_athropods" 25

execute store result score #crit_check ntils.z.temp run attribute @s generic.attack_damage get 15
execute store result score #full_check ntils.z.temp run attribute @s generic.attack_damage get 10
scoreboard players operation #crit_check ntils.z.temp += #dam_mod ntils.z.temp
scoreboard players operation #full_check ntils.z.temp += #dam_mod ntils.z.temp

scoreboard players set #dam_mod ntils.z.temp 0
scoreboard players set #sharp_level ntils.z.temp 0
execute store result score #sharp_level ntils.z.temp run data get storage ntils:z tempMainhand.components."minecraft:enchantments".levels."minecraft:sharpness" 1

execute if score #sharp_level ntils.z.temp matches 1.. run scoreboard players add #dam_mod ntils.z.temp 10
execute if score #sharp_level ntils.z.temp matches 1.. run scoreboard players remove #sharp_level ntils.z.temp 1
scoreboard players operation #sharp_level ntils.z.temp *= #5 ntils.z.const
scoreboard players operation #dam_mod ntils.z.temp += #sharp_level ntils.z.temp
scoreboard players operation #crit_check ntils.z.temp += #dam_mod ntils.z.temp
scoreboard players operation #full_check ntils.z.temp += #dam_mod ntils.z.temp

scoreboard players set #HIT_TYPE# ntils.API 0

execute if score #DAMAGE_DEALT# ntils.API >= #full_check ntils.z.temp run scoreboard players set #HIT_TYPE# ntils.API 1
execute if score #DAMAGE_DEALT# ntils.API >= #crit_check ntils.z.temp if entity @s[predicate=ntils:z/combat/crit_possible] run scoreboard players set #HIT_TYPE# ntils.API 2

function #ntils:api/combat/player_hurt_entity

tag @e remove ntils.API.combat.victim
schedule function ntils:z/combat/remove_blocker_tags 1t
advancement revoke @s only ntils:z/combat/player_hurt_entity