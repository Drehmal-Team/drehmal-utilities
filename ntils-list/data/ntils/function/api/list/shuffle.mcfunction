# LIST/SHUFFLE
#
#   Given a list, creates a shuffled copy of that list.
#
# INPUT:
#   > Storage:
#       | ntils:api list.shuffle.in, list
#
# OUTPUT:
#   > Storage:
#       | ntils:api list.shuffle.out, list
#
# Performance: Bad
#   Has to perform a macro function call for each element in the list, meaning it grows in lag pretty quickly.

execute unless score $ntils:list.ENABLED ntils.API.singularity.flag matches 1.. run return fail

execute store result score #loop ntils.z.list.temp if data storage ntils:api list.shuffle.in[]
execute if score #loop ntils.z.list.temp matches ..1 run return run data modify storage ntils:api list.shuffle.out set from storage ntils:api list.shuffle.in

data modify storage ntils:api list.shuffle.out set value []
data modify storage ntils:z list.shuffle.temp set from storage ntils:api list.shuffle.in
execute store result score #rand ntils.z.list.temp run random value 0..2147483646
execute store result storage ntils:z list.shuffle.m.i int 1 run scoreboard players operation #rand ntils.z.list.temp %= #loop ntils.z.list.temp
function ntils:z/list/shuffle/loop with storage ntils:z list.shuffle.m