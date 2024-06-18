execute if entity @s[scores={ntils.combat.invul.on=1..}] run return fail
attribute @s generic.safe_fall_distance modifier add d881a22d-0b44-449f-899f-7f51a2a48916 "invul" 999999 add_value
effect give @s resistance 1 14 true
effect give @s fire_resistance 1 14 true
tag @s add ntils.API.combat.invul
scoreboard players set @s ntils.combat.invul.on 1