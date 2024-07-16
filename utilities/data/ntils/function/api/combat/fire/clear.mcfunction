execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return fail
execute if entity @s[scores={ntils.z.combat.fire.clear.bool=1}] run return fail
scoreboard players set @s ntils.z.combat.fire.clear.bool 1