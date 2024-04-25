execute if entity @s[tag=utils.API.combat.disable_advancement] run return run advancement revoke @s only utils:z/player_hurt_entity

function utils:z/combat/get_damage

execute as @e[type=!#utils:api/nohitbox,tag=!utils.player_hurt_me,distance=..10] at @s on attacker if entity @s[advancements={utils:z/player_hurt_entity=true}] as @e[distance=0,nbt={HurtTime:10s}] run function utils:z/combat/add_tags

scoreboard players add #testing utils.temp 1

item replace block -30000000 0 15000000 container.0 from entity @s weapon.mainhand

data modify storage utils:z tempMainhand set from block -30000000 0 15000000 Items[0]

scoreboard players set #dam_mod utils.temp 0
execute if entity @s[advancements={utils:z/player_hurt_entity={undead=true}},predicate=utils:z/holding/smite] store result score #dam_mod utils.temp run data get storage utils:z tempMainhand.tag.Enchantments[{"id":"minecraft:smite"}].lvl 25
execute if entity @s[advancements={utils:z/player_hurt_entity={arthropod=true}},predicate=utils:z/holding/bane] store result score #dam_mod utils.temp run data get storage utils:z tempMainhand.tag.Enchantments[{"id":"minecraft:bane_of_arthropods"}].lvl 25

execute store result score #crit_check utils.temp run attribute @s generic.attack_damage get 15
execute store result score #full_check utils.temp run attribute @s generic.attack_damage get 10
scoreboard players operation #crit_check utils.temp += #dam_mod utils.temp
scoreboard players operation #full_check utils.temp += #dam_mod utils.temp

scoreboard players set #dam_mod utils.temp 0
scoreboard players set #sharp_level utils.temp 0
execute if predicate utils:z/holding/sharpness store result score #sharp_level utils.temp run data get storage utils:z tempMainhand.tag.Enchantments[{"id":"minecraft:sharpness"}].lvl 1

execute if score #sharp_level utils.temp matches 1.. run scoreboard players add #dam_mod utils.temp 10
execute if score #sharp_level utils.temp matches 1.. run scoreboard players remove #sharp_level utils.temp 1
scoreboard players operation #sharp_level utils.temp *= #5 utils.const
scoreboard players operation #dam_mod utils.temp += #sharp_level utils.temp
scoreboard players operation #crit_check utils.temp += #dam_mod utils.temp
scoreboard players operation #full_check utils.temp += #dam_mod utils.temp

scoreboard players set #HIT_TYPE# utils.API 0


execute if score #DAMAGE_DEALT# utils.API >= #full_check utils.temp run scoreboard players set #HIT_TYPE# utils.API 1
execute if score #DAMAGE_DEALT# utils.API >= #crit_check utils.temp if entity @s[predicate=utils:z/combat/crit_possible] run scoreboard players set #HIT_TYPE# utils.API 2
function #utils:api/combat/player_hurt_entity

tag @e remove utils.API.combat.victim
schedule function utils:z/combat/remove_blocker_tags 1t
advancement revoke @s only utils:z/player_hurt_entity