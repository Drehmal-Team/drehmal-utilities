# POS/GET_DIM
#
# Copies the current dimension context as a string id to the storage location ntils.api pos.get_dim.out
#
# PERFORMANCE: Meh
#   Not the best for performance, but perfectly fine if you just want the string ID and only need to use it once.
#   However, this is much better than accessing the player's Dimension nbt

execute positioned 0 -1000 0 summon piglin_brute run function ntils:z/pos/get_dim/as