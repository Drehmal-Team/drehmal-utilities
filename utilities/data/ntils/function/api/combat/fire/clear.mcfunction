# COMBAT/FIRE/CLEAR
#
# Removes fire from the player this is run as.
#
# PERFORMANCE: Excellent
#   Optimized such that you can be a bit messy with your use of it in the datapack.

execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return fail
scoreboard players set @s ntils.z.combat.fire.clear.bool 1
scoreboard players reset @s ntils.z.combat.fire.light.bool
execute unless entity @a[scores={ntils.z.combat.fire.light.bool=1}] run schedule clear ntils:z/combat/fire/light/schedule
schedule function ntils:z/combat/fire/clear/schedule 1t