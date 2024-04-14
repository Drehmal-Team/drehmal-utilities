execute store result score #swee.framecurrent n_art.temp run scoreboard players add @s n_art.timer 1
scoreboard players set #swee.framemax n_art.temp 9
execute if entity @s[tag=n_art.fzy.reverse] run scoreboard players set #swee.reverse n_art.temp 1
function n_art:m/fzy/sweep/main
execute if score @s n_art.timer matches 9.. run kill @s