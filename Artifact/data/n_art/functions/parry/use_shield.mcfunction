scoreboard players set #schedule_loop n_art.temp 0
execute as @a[scores={n_art.use_shield=1..}] run function n_art:parry/tick
execute if score #schedule_loop n_art.temp matches 1 run schedule function n_art:parry/use_shield 1t