# advanced conquerors was a fucking asspull
scoreboard players set #particle_light.direction n_plib.API 1
scoreboard players set #particle_light.scale n_plib.API 100
execute summon marker run function n_art:utils/position/random_ground {RadiusMax:5400,RadiusMin:4800,Command:"execute facing entity @s feet facing ^ ^ ^-1 facing ^ ^1 ^1 run function n_plib:api/beizer_lightning_d {Steps:7,Delay:2,Command:'particle minecraft:dust_color_transition 0 0 0 1.3 1 0 0 ~ ~ ~ 0 0 0 0 1 force'}"}
execute summon marker run function n_art:utils/position/random_ground {RadiusMax:4800,RadiusMin:4200,Command:"execute facing entity @s feet facing ^ ^ ^-1 facing ^ ^1 ^1 run function n_plib:api/beizer_lightning_d {Steps:8,Delay:3,Command:'particle minecraft:dust_color_transition 0 0 0 1.3 1 0 0 ~ ~ ~ 0 0 0 0 1 force'}"}
execute summon marker run function n_art:utils/position/random_ground {RadiusMax:3600,RadiusMin:3000,Command:"execute facing entity @s feet facing ^ ^ ^-1 facing ^ ^1 ^1 run function n_plib:api/beizer_lightning_d {Steps:7,Delay:2,Command:'particle minecraft:dust_color_transition 0 0 0 1.3 1 0 0 ~ ~ ~ 0 0 0 0 1 force'}"}
execute summon marker run function n_art:utils/position/random_ground {RadiusMax:2400,RadiusMin:1800,Command:"execute facing entity @s feet facing ^ ^ ^-1 facing ^ ^1 ^1 run function n_plib:api/beizer_lightning_d {Steps:8,Delay:3,Command:'particle minecraft:dust_color_transition 0 0 0 1.3 1 0 0 ~ ~ ~ 0 0 0 0 1 force'}"}
execute summon marker run function n_art:utils/position/random_ground {RadiusMax:1800,RadiusMin:1200,Command:"execute facing entity @s feet facing ^ ^ ^-1 facing ^ ^1 ^1 run function n_plib:api/beizer_lightning_d {Steps:7,Delay:2,Command:'particle minecraft:dust_color_transition 0 0 0 1.3 1 0 0 ~ ~ ~ 0 0 0 0 1 force'}"}


scoreboard players reset #particle_light.scale n_plib.API
scoreboard players reset #particle_light.direction n_plib.API