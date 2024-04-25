# POS/WITHIN_BLOCK_GET
#
# Copies the decimal portion of the current command context to the storage location utils.api vector
# Specifically, if the coord is positive it chops like so: 4.6 -> 0.6. Negative becomes -4.6 -> 0.4.

execute summon marker run function utils:z/pos/within_block_get/main
