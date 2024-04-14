# advanced conquerors was a fucking asspull
scoreboard players set #particle_light.direction n_plib.API 1
scoreboard players set #particle_light.scale n_plib.API 120
playsound minecraft:entity.lightning_bolt.thunder player @s ~ ~ ~ 0.1 2
execute summon marker run function n_art:utils/position/random_ground {RadiusMax:1200,RadiusMin:600,Command:"execute facing entity @s feet facing ^ ^1 ^ run function n_plib:api/beizer_lightning_d {Steps:7,Delay:0,Command:'particle minecraft:dust_color_transition 0 0 0 0.5 0.8 0 0.2'}"}

scoreboard players reset #particle_light.scale n_plib.API
scoreboard players reset #particle_light.direction n_plib.API