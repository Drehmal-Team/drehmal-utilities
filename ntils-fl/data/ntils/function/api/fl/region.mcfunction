# FL/REGION
#
# Given two pairs of XZ coordinates, loads all chunks in that region.
#
# MACRO ARGUMENTS:
#   -FromX: The starting X position.
#   -FromZ: The starting Z position.
#   -ToZ: The ending X position.
#   -ToZ: The ending Z position.
#       Note: These can be absolute or relative, and direction doesnt matter. The load still works even if the starting position is lower than the ending position.
#   -Args: Optional arguments.
#       -Dimension: The dimension for the load to be savd as having applied to. Use this for better performance, but only when you're absolutely sure you
#                   know there will never be a dimension mismatch (as an example, if this is called in the overworld but the passed dimension is nether, 
#                   you wont be able to clear the forceload with the normal clear function).
#
# RETURN VALUES:
#   The return value of this function is the integer ID of the forceload it created. This can be used to remove it later.
#
# Performance: Good
#   If you need to mass load chunks, always use this.

execute unless score $ntils:fl.ENABLED ntils.API.singularity.flag matches 1.. run return fail

$data modify storage ntils:z fl.region.args set value $(Args)

$execute positioned $(FromX) 0 $(FromZ) run function ntils:api/pos/get
data modify storage ntils:z fl.region.from set from storage ntils:api pos.get.out
$execute positioned $(ToX) 0 $(ToZ) run function ntils:api/pos/get

$forceload add $(FromX) $(FromZ) $(ToX) $(ToZ)

data modify storage ntils:z fl.region.to set from storage ntils:api pos.get.out
execute unless data storage ntils:z fl.region.args.Dimension run function ntils:api/pos/get_dim
execute unless data storage ntils:z fl.region.args.Dimension run data modify storage ntils:z fl.region.dim set from storage ntils:api pos.get_dim.out
execute if data storage ntils:z fl.region.args.Dimension run data modify storage ntils:z fl.region.dim set from storage ntils:z fl.region.args.Dimension
$data modify storage ntils:z fl.region.temp set value {name:"$(Name)",id:0,dim:'',x:0,z:0}
execute store result storage ntils:z fl.region.temp.id int 1 run scoreboard players add #FORCELOAD_ID# ntils.z.global 1
data modify storage ntils:z fl.region.temp.dim set from storage ntils:z fl.region.dim

execute store result score #x1 ntils.z.fl.temp run data get storage ntils:z fl.region.from[0] 0.0625
execute store result score #x2 ntils.z.fl.temp run data get storage ntils:z fl.region.to[0] 0.0625
execute store result score #z1 ntils.z.fl.temp run data get storage ntils:z fl.region.from[2] 0.0625
execute store result score #z2 ntils.z.fl.temp run data get storage ntils:z fl.region.to[2] 0.0625

execute if score #x1 ntils.z.fl.temp > #x2 ntils.z.fl.temp run scoreboard players operation #x1 ntils.z.fl.temp >< #x2 ntils.z.fl.temp
execute if score #z1 ntils.z.fl.temp > #z2 ntils.z.fl.temp run scoreboard players operation #z1 ntils.z.fl.temp >< #z2 ntils.z.fl.temp

execute store result storage ntils:z fl.region.temp.x int 16 run scoreboard players get #x1 ntils.z.fl.temp
execute store result storage ntils:z fl.region.temp.z int 16 run scoreboard players get #z1 ntils.z.fl.temp

scoreboard players operation #z1 ntils.z.fl.int = #z1 ntils.z.fl.temp

function ntils:z/fl/region/l/x

return run scoreboard players get #FORCELOAD_ID# ntils.z.global