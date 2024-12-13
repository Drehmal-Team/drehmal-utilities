# CONTEXT/POS/GET
#
#   Getter function for the current command context location. Copies the current command context location to a storage.
#
# IN:
#   > N/A
#
# OUT:
#   > [double, double, double] at "ntils:api context.pos.get.out"
#
# Performance: Excellent
#   Switches between execute summon and just direct data modify depending on context. Use this function in any low-stakes setting where
#   Pos isn't otherwise easily accessible.

execute if entity @s[type=!player,distance=..0.0000001] run return run data modify storage ntils:api context.pos.get.out set from entity @s Pos
execute summon marker run function ntils:z/context/pos/get/as