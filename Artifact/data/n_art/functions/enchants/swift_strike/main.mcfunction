tag @s add n_art.temp
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=!#n_art:nocol,distance=..14] at @s on attacker if entity @s[tag=n_art.temp] as @e[type=!#n_art:nocol,distance=..0,nbt={HurtTime:10s}] run function n_art:enchants/swift_strike/inflict
tag @s remove n_art.temp