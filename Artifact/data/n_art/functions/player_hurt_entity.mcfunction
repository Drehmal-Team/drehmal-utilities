execute if entity @s[tag=n_art.API.disable_advancement] run return run advancement revoke @s only n_art:player_hurt_entity

function n_art:get_damage

execute as @e[type=!#n_art:nohitbox,distance=..10] at @s on attacker if entity @s[advancements={n_art:player_hurt_entity=true}] as @e[distance=0,nbt={HurtTime:10s}] run tag @s add n_art.API.victim_entity

item replace block -30000000 0 15000000 container.0 from entity @s weapon.mainhand

data modify storage n_art:storage tempMainhand set from block -30000000 0 15000000 Items[0]

scoreboard players set #dam_mod n_art.temp 0
execute if entity @s[advancements={n_art:player_hurt_entity={undead=true}},predicate=n_art:smite] store result score #dam_mod n_art.temp run data get storage n_art:storage tempMainhand.tag.Enchantments[{"id":"minecraft:smite"}].lvl 25
execute if entity @s[advancements={n_art:player_hurt_entity={arthropod=true}},predicate=n_art:bane] store result score #dam_mod n_art.temp run data get storage n_art:storage tempMainhand.tag.Enchantments[{"id":"minecraft:bane_of_arthropods"}].lvl 25

execute store result score #player_damage n_art.temp run attribute @s generic.attack_damage get 15
scoreboard players operation #player_damage n_art.temp += #dam_mod n_art.temp

scoreboard players set #dam_mod n_art.temp 0
scoreboard players set #sharp_level n_art.temp 0
execute if predicate n_art:sharpness store result score #sharp_level n_art.temp run data get storage n_art:storage tempMainhand.tag.Enchantments[{"id":"minecraft:sharpness"}].lvl 1

execute if score #sharp_level n_art.temp matches 1.. run scoreboard players add #dam_mod n_art.temp 10
execute if score #sharp_level n_art.temp matches 1.. run scoreboard players remove #sharp_level n_art.temp 1
scoreboard players operation #sharp_level n_art.temp *= #5 n_art.const
scoreboard players operation #dam_mod n_art.temp += #sharp_level n_art.temp
scoreboard players operation #player_damage n_art.temp += #dam_mod n_art.temp

#execute if entity @s[tag=!n_art.frenzy.active,scores={n_art.frenzy.dps_counter=120..},predicate=n_art:holding/frenzy] run function n_art:m/fzy/f/activate
execute if entity @s[tag=n_art.frenzy.active] run function n_art:m/fzy/f/mob_hit
execute if predicate n_art:holding/frenzy run scoreboard players operation @s n_art.frenzy.0 += __DAMAGE__ n_art.int

execute if score __DAMAGE__ n_art.int >= #player_damage n_art.temp if entity @s[predicate=n_art:crit_possible] run function n_art:crit

execute if data storage n_art:storage tempMainhand.tag.ArtifactEnchantments[{id:"n_art:swift_strike"}] run function n_art:enchants/swift_strike/main

execute store result score #gametime n_art.temp run time query gametime

execute if entity @s[tag=n_art.shield_parry] if score #gametime n_art.temp < @s n_art.shield_parry run function n_art:parry/main
tag @s remove n_art.shield_parry

tag @e remove n_art.API.victim_entity
advancement revoke @s only n_art:player_hurt_entity
