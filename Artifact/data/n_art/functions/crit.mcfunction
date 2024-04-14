tag @s add n_art.temp
execute if data storage n_art:storage tempMainhand.tag.ArtifactEnchantments[{id:"n_art:impact"}] run function n_art:enchants/impact/main
tag @s remove n_art.temp

#say CRIT!