tellraw @a {"nbt":"Health","entity":"@s"}
execute store success score #silent n_art.temp run data modify entity @s Silent set value 1b
damage @s 0.000001 n_art:iframes
execute if score #silent n_art.temp matches 1 run data modify entity @s Silent set value 0b
