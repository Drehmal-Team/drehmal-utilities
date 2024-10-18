# POS/RANDOM_GROUND
#
# Moves the command execution location to a random point on the ground located in a circular area between the lower and upper radius bounds.
# Once the execution point has been moved, runs Command at that location.
#
# MACRO INPUTS:
# - Command: A syntacically correct command. No " quotes or escape characters
# - RadiusMin: The lower bound of the radius. Integer. Scaled by 100 (so 3 block radius = 300)
# - RadiusMax: The upper bound of the radius. Integer. Scaled by 100 (so 3 block radius = 300)
#
# PERFORMANCE: Good

$data modify storage ntils:z macro set value {cmd:"$(Command)",x:0,y:0}

execute store result storage ntils:z macro.x double 0.01 run random value -18000..18000
$execute store result storage ntils:z macro.y double 0.01 run random value $(RadiusMin)..$(RadiusMax)

function ntils:z/pos/random_ground/begin with storage ntils:z macro