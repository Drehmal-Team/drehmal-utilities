data modify storage n_art:storage macro set value {rand:0}
execute store result score #rand n_art.temp store result storage n_art:storage macro.rand float 0.01 run random value 90..500
execute if predicate n_art:rng/50 store result storage n_art:storage macro.rand float 0.01 run scoreboard players operation #rand n_art.temp *= #-1 n_art.const
execute positioned ~ ~1.2 ~ summon marker run function n_art:m/fzy/minisweep/activate with storage n_art:storage macro

execute if score @s n_art.frenzy.dps matches 0 run scoreboard players set @s n_art.frenzy.dps 1

playsound minecraft:item.trident.throw player @s ~ ~ ~ 0.25 0.8

scoreboard players set @s n_art.frenzy.no_l 10

execute as @e[tag=n_art.API.victim_entity] facing entity @s feet rotated ~ 0 facing ^ ^ ^-1 positioned as @s run function n_art:m/fzy/as_mob