# MATH/CHOOSE
#
#   Given two numbers X and Y, caculates X choose Y. Google "binomial coefficient" to see what this means.
#   NOTE: This can only calculate choose values up to 33 choose y. Any higher would have scoreboard overflows.
#
# INPUT:
#   > Scoreboard:
#       | #math.choose.in.x ntils.API
#       | #math.choose.in.y ntils.API
#
# OUTPUT:
#   > Scoreboard:
#       | #math.choose.out ntils.API
#   > Return:
#       | This function also returns the choose result in addition to storing it as a score.
#
# PERFORMANCE: Good. 
#   This uses a macro for simplicity and to gain the ability to calculate numbers up to 33.
#   For reference, the performance impact of a single-key storage-referenced uncached macro is ~25 scoreboard commands.

execute store result storage ntils:z math.choose.m.x int 1 run scoreboard players get #math.choose.in.x ntils.API
execute store result storage ntils:z math.choose.m.y int 1 run scoreboard players get #math.choose.in.y ntils.API

return run execute store result score #math.choose.out ntils.API run function ntils:z/math/choose/main with storage ntils:z math.choose.m