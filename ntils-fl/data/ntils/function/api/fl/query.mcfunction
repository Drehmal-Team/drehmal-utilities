# FL/QUERY
#
# Gives the list of all forceloads currently applied to the chunk this is run in.
#
# OUT: Object array at ntils:api fl.query.out
#      Each object looks like this: {id:int,dim:string}
#
# RETURN VALUE: Returns the amount of forceloads acting on this. Can be used in "execute if function"
#
# Performance: Bad
#   No optional arguments for performance here. Avoid using this unless you absolutely need to.

execute unless score $ntils:fl.ENABLED ntils.API.flag matches 1.. run return fail

function ntils:api/pos/get
function ntils:api/pos/get_dim
execute store result storage ntils:z fl.query.macro.x int 16 run data get storage ntils:api pos.get.out[0] 0.0625
execute store result storage ntils:z fl.query.macro.z int 16 run data get storage ntils:api pos.get.out[2] 0.0625
data modify storage ntils:z fl.query.macro.dim set from storage ntils:api pos.get_dim.out
data modify storage ntils:api fl.query.out set value []
execute if data storage ntils:z fl.list[] run function ntils:z/fl/query/get with storage ntils:z fl.query.macro
data remove storage ntils:api fl.query.out[].x
data remove storage ntils:api fl.query.out[].z
data remove storage ntils:api fl.query.out[].dim
return run execute if data storage ntils:api fl.query.out[]