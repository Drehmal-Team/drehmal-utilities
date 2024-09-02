# MATH/CHOOSE
#
# Given two numbers X and Y, caculates X choose Y. Google "binomial coefficient" to see what this means.
#
# NOTE: This can only calculate choose values up to 36 choose y. Any higher would have scoreboard overflows.
#
# INPUT:
#
#   #math.choose.in.x ntils.API
#   #math.choose.in.y ntils.API
#
# OUTPUT:
#
#   #math.choose.out ntils.API
#   This functions return value.
#
# PERFORMANCE: Great. This uses a macro for simplicity and to gain the ability to calculate numbers up to 33.

#execute unless score #math.choose.in.x ntils.API matches 1..33 run return fail
#execute unless score #math.choose.in.y ntils.API matches 0.. run return fail
#execute if score #math.choose.in.y ntils.API > #math.choose.in.x ntils.API run return fail

execute store result storage ntils:z math.choose.m.x int 1 run scoreboard players get #math.choose.in.x ntils.API
execute store result storage ntils:z math.choose.m.y int 1 run scoreboard players get #math.choose.in.y ntils.API

return run execute store result score #math.choose.out ntils.API run function ntils:z/math/choose/main with storage ntils:z math.choose.m