data modify storage n_art:storage tempArmor set from entity @s ArmorItems

scoreboard players set #prot_add n_art.temp 0
execute store result score #prot_add n_art.temp run data get storage n_art:storage tempArmor[0].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation #protection n_art.temp += #prot_add n_art.temp
scoreboard players set #prot_add n_art.temp 0
execute store result score #prot_add n_art.temp run data get storage n_art:storage tempArmor[1].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation #protection n_art.temp += #prot_add n_art.temp
scoreboard players set #prot_add n_art.temp 0
execute store result score #prot_add n_art.temp run data get storage n_art:storage tempArmor[2].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation #protection n_art.temp += #prot_add n_art.temp
scoreboard players set #prot_add n_art.temp 0
execute store result score #prot_add n_art.temp run data get storage n_art:storage tempArmor[3].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation #protection n_art.temp += #prot_add n_art.temp