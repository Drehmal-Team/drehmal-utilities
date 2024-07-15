tag @s remove ntils.combat.invul.survival
execute unless score @s ntils.z.combat.invul.on matches 1 run return run function ntils:z/combat/invul/off
execute unless predicate ntils:api/gamemode/sa run return fail

effect give @s resistance 1 14 true
effect give @s fire_resistance 1 14 true
execute if entity @s[gamemode=survival] run tag @s add ntils.combat.invul.survival
gamemode creative
advancement revoke @s only ntils:z/combat/invul/tick