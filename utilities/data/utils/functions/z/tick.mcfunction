execute store result score #GAMETIME# utils.global run time query gametime

execute as @e[tag=utils.API.tag_scores,predicate=!utils:z/has_scores] run function utils:z/tag_scores/main

execute as @e[type=item,tag=!utils.item] run function utils:z/item/init

execute as @a at @s run function utils:z/player/tick
