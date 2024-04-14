scoreboard players operation #gt n_art.temp = #GAMETIME# n_art.global
scoreboard players operation #gt n_art.temp %= #2 n_art.const
execute if score #gt n_art.temp matches 0 run function n_art:m/fzy/pushback

scoreboard players operation #prev n_art.temp = @s n_art.frenzy.dps_counter

execute store result score #dps_threshold n_art.temp run attribute @s minecraft:generic.attack_damage get 25
execute store result score #dps_mod n_art.temp run attribute @s minecraft:generic.attack_speed get 10
scoreboard players operation #dps_threshold n_art.temp *= #dps_mod n_art.temp
scoreboard players operation #dps_threshold n_art.temp /= #10 n_art.const

scoreboard players operation #dps_threshold n_art.temp > #FRENZY.DPS_MIN# n_art.global
scoreboard players operation #dps_threshold n_art.temp < #FRENZY.DPS_MAX# n_art.global

scoreboard players add @s n_art.frenzy.hearbeat 1

execute if score @s n_art.frenzy.dps matches 0 if predicate n_art:rng/50 run particle minecraft:dust_color_transition 1 0.02 0.15 0.4 0.2 0 0.01 ~ ~1 ~ 1.2 0.4 1.2 0 1
execute unless score @s n_art.frenzy.dps matches 0 unless score @s n_art.frenzy.dps >= #dps_threshold n_art.temp run particle minecraft:dust_color_transition 1 0.02 0.15 0.6 0.2 0 0.01 ~ ~1 ~ 1.2 0.4 1.2 0 2
execute if score @s n_art.frenzy.dps >= #dps_threshold n_art.temp run particle minecraft:dust_color_transition 1 0.02 0.15 0.8 0.2 0 0.01 ~ ~1 ~ 1.2 0.4 1.2 0 3

execute if score @s n_art.frenzy.dps matches 0 run scoreboard players operation @s n_art.frenzy.hearbeat %= #25 n_art.const
execute unless score @s n_art.frenzy.dps matches 0 unless score @s n_art.frenzy.dps >= #dps_threshold n_art.temp run scoreboard players operation @s n_art.frenzy.hearbeat %= #20 n_art.const
execute if score @s n_art.frenzy.dps >= #dps_threshold n_art.temp run scoreboard players operation @s n_art.frenzy.hearbeat %= #16 n_art.const
execute if score @s n_art.frenzy.hearbeat matches 0 run playsound minecraft:custom.heartbeat player @s ~ ~ ~ 0.6

execute if score @s n_art.frenzy.no_l matches ..0 if score @s n_art.frenzy.dps matches 0 if predicate n_art:rng/05 positioned ~ ~1.15 ~ run function n_art:m/fzy/ground_lightning
execute if score @s n_art.frenzy.no_l matches ..0 unless score @s n_art.frenzy.dps matches 0 if predicate n_art:rng/05 positioned ~ ~1.2 ~ run function n_art:m/fzy/ground_lightning
execute if score @s n_art.frenzy.no_l matches ..0 unless score @s n_art.frenzy.dps matches 0 if predicate n_art:rng/05 positioned ~ ~1.1 ~ run function n_art:m/fzy/ground_lightning

scoreboard players remove @s n_art.frenzy.no_l 1

execute if score @s n_art.frenzy.dps >= #dps_threshold n_art.temp run scoreboard players add @s n_art.frenzy.dps_counter 1
execute if score @s n_art.frenzy.dps matches 0 run scoreboard players remove @s n_art.frenzy.dps_counter 1

execute if score @s n_art.frenzy.dps_counter matches ..0 run scoreboard players set @s n_art.frenzy.dps_counter 0
execute if score @s n_art.frenzy.dps_counter matches 200.. run scoreboard players set @s n_art.frenzy.dps_counter 200

execute if entity @s[tag=n_art.frenzy.active] unless score @s n_art.frenzy.dps_counter matches 1.. run function n_art:m/fzy/f/deactivate
execute if entity @s[tag=n_art.frenzy.active] run function n_art:m/fzy/dps_actionbar