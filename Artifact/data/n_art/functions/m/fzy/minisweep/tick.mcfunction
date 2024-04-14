execute store result score #swee.framecurrent n_art.temp run scoreboard players add @s n_art.timer 1
scoreboard players set #swee.framemax n_art.temp 8
execute if entity @s[tag=n_art.fzy.reverse] run scoreboard players set #swee.reverse n_art.temp 1
function n_art:m/fzy/minisweep/main
execute if score @s n_art.timer matches 5.. run kill @s