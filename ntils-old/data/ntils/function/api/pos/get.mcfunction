# POS/GET
#
# Copies the current command context location to the storage location ntils.api pos.get.out
#
# PERFORMANCE: Ok
#   Use when the current command context is different from the position of the context entity, or when running as a player.
#   Otherwise, just get the entities position data.

execute summon marker run function ntils:z/pos/get/main