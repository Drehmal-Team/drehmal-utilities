data modify storage n_art:storage macro set value {rand:0}
execute store result score #rand n_art.temp store result storage n_art:storage macro.rand float 0.01 run random value 500..900
execute if predicate n_art:rng/50 store result storage n_art:storage macro.rand float 0.01 run scoreboard players operation #rand n_art.temp *= #-1 n_art.const
execute positioned ~ ~1.4 ~ summon marker run function n_art:m/fzy/sweep/activate with storage n_art:storage macro


attribute @s generic.attack_speed modifier add c13c41d9-4750-493c-8e8f-cb5b532fd043 "bonus_speed" 0.4 multiply_base
attribute @s generic.attack_damage modifier add 7bb25417-6e29-45be-818b-dafca74924cc "bonus_strength" 5 add

execute store result score #dps_threshold n_art.temp run attribute @s minecraft:generic.attack_damage get 25
execute store result score #dps_mod n_art.temp run attribute @s minecraft:generic.attack_speed get 10
scoreboard players operation #dps_threshold n_art.temp *= #dps_mod n_art.temp
scoreboard players operation #dps_threshold n_art.temp /= #10 n_art.const
scoreboard players operation #dps_threshold n_art.temp /= #50 n_art.const


tag @s add n_art.frenzy.active
scoreboard players set @s n_art.frenzy.dps_counter 200

scoreboard players operation @s n_art.frenzy.0 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.1 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.2 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.3 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.4 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.5 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.6 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.7 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.8 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.9 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.10 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.11 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.12 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.13 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.14 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.15 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.16 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.17 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.18 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.19 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.20 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.21 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.22 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.23 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.24 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.25 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.26 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.27 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.28 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.29 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.30 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.31 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.32 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.33 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.34 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.35 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.36 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.37 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.38 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.39 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.40 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.41 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.42 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.43 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.44 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.45 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.46 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.47 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.48 = #dps_threshold n_art.temp
scoreboard players operation @s n_art.frenzy.49 = #dps_threshold n_art.temp

execute positioned ~ ~0.8 ~ run function n_art:m/fzy/explosive_lightning_alt

scoreboard players set @s n_art.frenzy.no_l 30

function n_art:m/fzy/pushback

playsound artifact:sfx.unsheath player @a ~ ~ ~ 10 1.2
playsound artifact:sfx.unsheath player @a ~ ~ ~ 10 1.2
playsound minecraft:item.trident.riptide_3 player @a ~ ~ ~ 10 0.5
playsound minecraft:item.trident.riptide_3 player @a ~ ~ ~ 10 1
playsound minecraft:item.totem.use player @a ~ ~ ~ 0.35 1.7

tag @s add n_art.temp
tag @s add n_art.API.disable_advancement
execute as @e[type=!#n_art:nohitbox,distance=0.1..7] run damage @s 16 n_art:iframes by @p[tag=n_art.temp]
tag @s remove n_art.API.disable_advancement
tag @s remove n_art.temp