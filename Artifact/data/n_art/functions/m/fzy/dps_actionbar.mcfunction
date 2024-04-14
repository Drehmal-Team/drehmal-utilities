execute store result score #ms n_art.temp run scoreboard players operation #sec n_art.temp = @s n_art.frenzy.dps_counter

data modify storage n_art:storage macro set value {col:'white',ins:'',s:0,ms:0}

execute store result storage n_art:storage macro.s int 1 run scoreboard players operation #sec n_art.temp /= #20 n_art.const
scoreboard players operation #ms n_art.temp %= #20 n_art.const
execute store result storage n_art:storage macro.ms int 1 run scoreboard players operation #ms n_art.temp *= #5 n_art.const

execute if score @s n_art.frenzy.dps >= #dps_threshold n_art.temp run data modify storage n_art:storage macro.col set value 'green'
execute if score @s n_art.frenzy.dps < #dps_threshold n_art.temp run data modify storage n_art:storage macro.col set value 'yellow'
execute if score @s n_art.frenzy.dps matches 0 run data modify storage n_art:storage macro.col set value 'red'

execute if score #ms n_art.temp matches ..9 run data modify storage n_art:storage macro.ins set value '0'

function n_art:m/fzy/time_macro with storage n_art:storage macro

title @s actionbar {"nbt":"fzy_bar.time","storage":"n_art:storage","interpret":true}

#execute if score @s n_art.frenzy.dps < #dps_threshold n_art.temp run data modify storage n_art:storage fzy_actionbar.sides set value {l:'["",{"text":"<","color":"dark_red"},{"text":" <","color":"red"},{"text":" <","color":"gray"}]',r:'["",{"text":" >","color":"gray"},{"text":" >","color":"red"},{"text":">","color":"dark_red"}]'}