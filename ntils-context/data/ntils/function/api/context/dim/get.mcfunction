# CONTEXT/DIM/GET
#
#    Getter function for the current dimension context. Copies the current dimension context to a storage.
#
# INPUT:
#   None
#
# OUTPUT:
#   > Storage:
#       | ntils:api context.dim.get.out, string
#
# Performance: Good
#   Has to do some nasty stuff to get the dimension context, so don't run this needlessly.

execute positioned 0 1000000 0 summon piglin_brute run function ntils:z/context/dim/get/as