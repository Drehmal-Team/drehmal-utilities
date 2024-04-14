data modify storage n_art:storage tempMacro set value {damage:0.0f}
execute store result score #impact n_art.int run data get storage n_art:storage tempMainhand.tag.ArtifactEnchantments[{id:"n_art:impact"}].lvl 20

execute at @s anchored eyes positioned ^ ^ ^ as @e[type=!#n_art:nocol,distance=..14] at @s on attacker if entity @s[tag=n_art.temp] as @e[type=!#n_art:nocol,distance=..0,nbt={HurtTime:10s}] run function n_art:enchants/impact/inflict