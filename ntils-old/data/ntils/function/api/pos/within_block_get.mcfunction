# POS/WITHIN_BLOCK_GET
#
# Copies the decimal portion of the current command context to the storage location ntils.api pos.within_block_get.out
# Specifically, if the coord is positive it chops like so: 4.6 -> 0.6. Negative becomes -4.6 -> 0.4.
#
# PERFORMANCE: Meh
#   Much worse than pos/get, but still not terrible. Only use this for when you are doing funky math things.

execute summon marker run function ntils:z/pos/within_block_get/main
