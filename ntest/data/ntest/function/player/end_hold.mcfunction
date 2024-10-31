scoreboard players operation #id ntest.temp = @s ntils.API.id
execute as @e[type=block_display,tag=ntest.fire_portal_base] if score @s ntest.id = #id ntest.temp run function ntest:wand/rm
scoreboard players reset @s ntest.hold