execute store result score #GAMETIME# ntils.z.global run time query gametime

execute as @e[tag=ntils.API.tag_scores,predicate=!ntils:z/has_scores] run function ntils:z/tag_scores/main

execute as @e[type=item,tag=!ntils.item] run function ntils:z/item/init

execute as @e[type=marker,tag=ntils.marker] run function ntils:z/marker_tick

execute as @a at @s run function ntils:z/player/tick
