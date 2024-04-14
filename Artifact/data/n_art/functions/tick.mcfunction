execute store result score #GAMETIME# n_art.global run time query gametime

#execute as @e[type=marker,tag=n_art.arrow_tracker] at @s run function n_art:arrows/tracker_tick

execute as @e[type=item,tag=!n_art.item] run function n_art:item/init

execute as @a at @s run function n_art:player/tick

execute as @e[type=marker,tag=n_art.marker] run function n_art:marker_tick