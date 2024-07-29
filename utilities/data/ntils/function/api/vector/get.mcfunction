# VECTOR/GET
#
# Gets the look vector of the specified magnitude and copies it to the storage location ntils.api vector
#
# MACRO INPUTS:
# - Len: The length of the vector in blocks.
#
# Performance: Ok
#   -Really only exists for convienence. I would adivse using this for readability.

$execute positioned .0 0 .0 positioned ^ ^ ^$(Len) summon marker run function ntils:z/vector/get/main