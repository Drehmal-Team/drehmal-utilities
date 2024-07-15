# VECTOR/GET_XYZ
#
# Converts the X Y Z vector to world coordinates from local rotation coordinates.
#
# MACRO INPUTS:
# - X: The X component of the vector in blocks.
# - Y: The Y component of the vector in blocks.
# - Z: The Z component of the vector in blocks.

$execute in ntils:z/empty positioned .0 0 .0 positioned ^$(X) ^$(Y) ^$(Z) summon marker run function ntils:z/vector/get_xyz/main