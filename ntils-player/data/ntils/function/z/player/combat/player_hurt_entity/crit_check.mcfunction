execute in ntils:z/empty run item replace block 0 0 0 container.0 from entity @s weapon.mainhand
data modify storage ntils:z player.combat.player_hurt_entity.temp_mainhand set value {}
execute in ntils:z/empty run data modify storage ntils:z player.combat.player_hurt_entity.temp_mainhand set from block 0 0 0 Items[0]

scoreboard players set #dam_mod ntils.z.player.temp 0
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={undead=true}}] store result score #dam_mod ntils.z.player.temp run data get storage ntils:z player.combat.player_hurt_entity.temp_mainhand.components."minecraft:enchantments".levels."minecraft:smite" 25
execute if entity @s[advancements={ntils:z/player/combat/player_hurt_entity={arthropod=true}}] store result score #dam_mod ntils.z.player.temp run data get storage ntils:z player.combat.player_hurt_entity.temp_mainhand.components."minecraft:enchantments".levels."minecraft:bane_of_athropods" 25

execute store result score #crit_check ntils.z.player.temp run attribute @s attack_damage get 15
execute store result score #full_check ntils.z.player.temp run attribute @s attack_damage get 10
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

data modify storage ntils:api player.combat.player_hurt_entity.damage.hit_type set value "weak"
execute if score #player.combat.DAMAGE_BEFORE_CALC# ntils.API >= #full_check ntils.z.player.temp run data modify storage ntils:api player.combat.player_hurt_entity.damage.hit_type set value "full"
execute if score #player.combat.DAMAGE_BEFORE_CALC# ntils.API >= #crit_check ntils.z.player.temp if entity @s[predicate=ntils:z/player/combat/player_hurt_entity/crit_possible] run data modify storage ntils:api player.combat.player_hurt_entity.damage.hit_type set value "critical"