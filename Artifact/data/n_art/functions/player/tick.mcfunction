data modify storage n_art:storage macro set value {id:0}
execute store result storage n_art:storage macro.id int 1 run scoreboard players get @s n_art.id
item replace block -30000000 0 15000000 container.0 with stone{n_art:{impossible:True}}
execute if predicate n_art:holding/anything run item replace block -30000000 0 15000000 container.0 from entity @s weapon.mainhand
function n_art:player/save_mainhand with storage n_art:storage macro
execute if score #diff n_art.temp matches 1 run function #n_art:mainhand_updated
execute if entity @s[tag=n_art.frenzy.active] run function n_art:m/fzy/tick