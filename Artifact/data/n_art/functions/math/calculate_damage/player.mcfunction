data modify storage n_art:storage tempInv set from entity @s Inventory

scoreboard players set #prot_add n_art.temp 0
execute store result score #prot_add n_art.temp run data get storage n_art:storage tempInv[{Slot:100b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation #protection n_art.temp += #prot_add n_art.temp
scoreboard players set #prot_add n_art.temp 0
execute store result score #prot_add n_art.temp run data get storage n_art:storage tempInv[{Slot:101b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation #protection n_art.temp += #prot_add n_art.temp
scoreboard players set #prot_add n_art.temp 0
execute store result score #prot_add n_art.temp run data get storage n_art:storage tempInv[{Slot:102b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation #protection n_art.temp += #prot_add n_art.temp
scoreboard players set #prot_add n_art.temp 0
execute store result score #prot_add n_art.temp run data get storage n_art:storage tempInv[{Slot:103b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation #protection n_art.temp += #prot_add n_art.temp