execute if entity @s[tag=ntils.API.combat.disable_advancement] run return run advancement revoke @s only ntils:z/player/combat/player_hurt_entity

function ntils:z/player/combat/player_hurt_entity/get_damage

execute as @e[type=!#ntils:api/player/combat/nohitbox,tag=!ntils.z.player.combat.player_hurt_entity,distance=..10] at @s on attacker if entity @s[advancements={ntils:z/player/combat/player_hurt_entity=true}] as @e[distance=0,nbt={HurtTime:10s}] run function ntils:z/player/combat/player_hurt_entity/add_tags

execute in ntils:z/empty run item replace block 0 0 0 container.0 from entity @s weapon.mainhand
execute in ntils:z/empty run data modify storage ntils:z player.combat.player_hurt_entity.temp_mainhand set from block 0 0 0 Items[0]

scoreboard players set #dam_mod ntils.z.player.temp 0
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={undead=true}}] store result score #dam_mod ntils.z.player.temp run data get storage ntils:z player.combat.player_hurt_entity.temp_mainhand.components."minecraft:enchantments".levels."minecraft:smite" 25
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={arthropod=true}}] store result score #dam_mod ntils.z.player.temp run data get storage ntils:z player.combat.player_hurt_entity.temp_mainhand.components."minecraft:enchantments".levels."minecraft:bane_of_athropods" 25

execute store result score #crit_check ntils.z.player.temp run attribute @s generic.attack_damage get 15
execute store result score #full_check ntils.z.player.temp run attribute @s generic.attack_damage get 10
scoreboard players operation #crit_check ntils.z.player.temp += #dam_mod ntils.z.player.temp
scoreboard players operation #full_check ntils.z.player.temp += #dam_mod ntils.z.player.temp

scoreboard players set #dam_mod ntils.z.player.temp 0
scoreboard players set #sharp_level ntils.z.player.temp 0
execute store result score #sharp_level ntils.z.player.temp run data get storage ntils:z player.combat.player_hurt_entity.temp_mainhand.components."minecraft:enchantments".levels."minecraft:sharpness" 1

execute if score #sharp_level ntils.z.player.temp matches 1.. run scoreboard players add #dam_mod ntils.z.player.temp 10
execute if score #sharp_level ntils.z.player.temp matches 1.. run scoreboard players remove #sharp_level ntils.z.player.temp 1
scoreboard players operation #sharp_level ntils.z.player.temp *= #5 ntils.z.const
scoreboard players operation #dam_mod ntils.z.player.temp += #sharp_level ntils.z.player.temp
scoreboard players operation #crit_check ntils.z.player.temp += #dam_mod ntils.z.player.temp
scoreboard players operation #full_check ntils.z.player.temp += #dam_mod ntils.z.player.temp

scoreboard players set #HIT_TYPE# ntils.API 0

execute if score #DAMAGE_DEALT# ntils.API >= #full_check ntils.z.player.temp run scoreboard players set #HIT_TYPE# ntils.API 1
execute if score #DAMAGE_DEALT# ntils.API >= #crit_check ntils.z.player.temp if entity @s[predicate=ntils:z/player/combat/player_hurt_entity/crit_possible] run scoreboard players set #HIT_TYPE# ntils.API 2

function #ntils:api/player/combat/player_hurt_entity

tag @e remove ntils.API.player.combat.player_hurt_entity.victim
schedule function ntils:z/player/combat/player_hurt_entity/remove_tags 1t
advancement revoke @s only ntils:z/player/combat/player_hurt_entity


advancement revoke @s only ntils:z/player/combat/player_hurt_entity