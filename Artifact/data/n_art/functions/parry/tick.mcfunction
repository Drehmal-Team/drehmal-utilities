scoreboard players set #schedule_loop n_art.temp 1
execute unless entity @s[tag=n_art.use_shield] run scoreboard players set @s n_art.use_shield 0
tag @s remove n_art.use_shield