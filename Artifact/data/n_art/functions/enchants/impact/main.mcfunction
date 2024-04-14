data modify storage n_art:storage tempMacro set value {damage:0.0f}
execute store result score #impact n_art.int run data get storage n_art:storage tempMainhand.tag.ArtifactEnchantments[{id:"n_art:impact"}].lvl 20

scoreboard players operation #dam n_art.temp = __DAMAGE__ n_art.int

scoreboard players operation #dam n_art.temp += #impact n_art.int
execute store result storage n_art:storage tempMacro.damage float 0.1 run scoreboard players remove #dam n_art.temp 5

tag @s add n_art.temp

execute at @s anchored eyes positioned ^ ^ ^ as @e[type=!#n_art:nocol,distance=..14] at @s on attacker if entity @s[tag=n_art.temp] as @e[type=!#n_art:nocol,distance=..0,nbt={HurtTime:10s}] run function n_art:enchants/impact/damage with storage n_art:storage tempMacro

tag @s remove n_art.temp