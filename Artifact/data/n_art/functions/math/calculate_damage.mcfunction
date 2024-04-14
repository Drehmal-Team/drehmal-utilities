scoreboard players operation __RETURN__ n_art.int = __INPUT__ n_art.int

execute store result score #at n_art.temp run attribute @s generic.armor_toughness get 10
execute store result score #total_resistance n_art.temp store result score #armor_sub n_art.temp run attribute @s generic.armor get 10

scoreboard players operation #total_resistance n_art.temp /= #5 n_art.const

scoreboard players add #at n_art.temp 80

scoreboard players operation #dam n_art.temp = __INPUT__ n_art.int

scoreboard players operation #dam n_art.temp *= #40 n_art.const

scoreboard players operation #dam n_art.temp /= #at n_art.temp

scoreboard players operation #armor_sub n_art.temp -= #dam n_art.temp

scoreboard players operation #total_resistance n_art.temp > #armor_sub n_art.temp

execute if score #total_resistance n_art.temp matches 200.. run scoreboard players set #total_resistance n_art.temp 200

scoreboard players set #damage_mult n_art.temp 250

scoreboard players operation #damage_mult n_art.temp -= #total_resistance n_art.temp

scoreboard players operation __RETURN__ n_art.int *= #damage_mult n_art.temp

scoreboard players operation __RETURN__ n_art.int /= #25 n_art.const

scoreboard players set #protection n_art.temp 0

execute if entity @s[type=player] run function n_art:math/calculate_damage/player
execute if entity @s[type=!player] run function n_art:math/calculate_damage/non_player

execute if score #protection n_art.temp matches 80.. run scoreboard players set #protection n_art.temp 80

scoreboard players set #damage_mult n_art.temp 100

scoreboard players operation #damage_mult n_art.temp -= #protection n_art.temp

scoreboard players operation __RETURN__ n_art.int *= #damage_mult n_art.temp

scoreboard players operation __RETURN__ n_art.int /= #100 n_art.const

scoreboard players set #has_resist n_art.temp 0
data modify storage n_art:storage tempList set value []
data modify storage n_art:storage tempList append from entity @s active_effects[{id:"minecraft:resistance"}]
execute store result score #resist n_art.temp store success score #has_resist n_art.temp run data get storage n_art:storage tempList[-1].amplifier
scoreboard players add #resist n_art.temp 1
execute if score #resist n_art.temp matches 5.. run scoreboard players set #resist n_art.temp 5

scoreboard players set #resist_mult n_art.temp 5
scoreboard players operation #resist_mult n_art.temp -= #resist n_art.temp
execute if score #has_resist n_art.temp matches 1.. run scoreboard players operation __RETURN__ n_art.int *= #resist_mult n_art.temp
execute if score #has_resist n_art.temp matches 1.. run scoreboard players operation __RETURN__ n_art.int /= #5 n_art.const 