scoreboard players reset @s ntils.z.combat.fire.clear.bool
advancement revoke @s only ntils:z/combat/fire/clear/end
execute unless entity @s[tag=ntils.z.combat.fire.clear.adventure] run gamemode survival
execute if entity @s[tag=ntils.z.combat.fire.clear.adventure] run gamemode adventure
tag @s remove ntils.z.combat.fire.clear.adventure