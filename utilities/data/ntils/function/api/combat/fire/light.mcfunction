# COMBAT/FIRE/LIGHT
#
# Sets whichever player this is run as on fire for 10 seconds.
#
# PERFORMANCE: Excellent
#   Optimized such that you can be a bit messy with your use of it in the datapack.

scoreboard players reset @s ntils.z.combat.fire.clear.bool
scoreboard players set @s ntils.z.combat.fire.light.bool 1
schedule function ntils:z/combat/fire/light/schedule 1t
execute unless entity @a[scores={ntils.z.combat.fire.clear.bool=1}] run schedule clear ntils:z/combat/fire/clear/schedule