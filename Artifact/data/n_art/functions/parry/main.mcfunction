data modify storage n_art:storage tempMacro set value {id:-1}
execute store result storage n_art:storage tempMacro.id int 1 run scoreboard players get @s n_art.id
function n_art:parry/from_storage with storage n_art:storage tempMacro
tag @s add n_art.temp
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=!#n_art:nocol,distance=..14] at @s on attacker if entity @s[tag=n_art.temp] as @e[type=!#n_art:nocol,distance=..0,nbt={HurtTime:10s}] run function n_art:parry/inflict with storage n_art:storage tempShield.tag.Parry
tag @s remove n_art.temp