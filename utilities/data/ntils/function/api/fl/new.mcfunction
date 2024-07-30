# FL/NEW
#
# Creates a load to act on a single chunk.
#
# MACRO ARGUMENTS:
#   Name: The name of the chunk. Used to remove it later.
#   Args: Object containing optional parameters.
#       -Pos: The position of the chunk to load, given as [double,double,double]. Use this for performance.
#       -Dimension: The dimension of the chunk to load. Use this for performance
#
# Performance: Ok
#   If both Pos and Dimension are given as arguments, the function is Great. However, each requires some
#   entity nbt stuff. Though, the dimension is the only one to actually care about, if I'm being honest.

forceload add ~ ~
$data modify storage ntils:z fl.new.temp set value {name:"$(Name)",id:0,x:0,z:0,dim:""}

$data modify storage ntils:z fl.new.args set value $(Args)

execute unless data storage ntils:z fl.new.args.Pos run function ntils:api/pos/get
execute unless data storage ntils:z fl.new.args.Pos run data modify storage ntils:z fl.new.pos set from storage ntils:api pos.get.out
execute if data storage ntils:z fl.new.args.Pos run data modify storage ntils:z fl.new.pos set from storage ntils:z fl.new.args.Pos

execute store result storage ntils:z fl.new.temp.x int 16 run data get storage ntils:z fl.new.pos[0] 0.0625
execute store result storage ntils:z fl.new.temp.z int 16 run data get storage ntils:z fl.new.pos[2] 0.0625

execute unless data storage ntils:z fl.new.args.Dimension run function ntils:api/pos/get_dim
execute unless data storage ntils:z fl.new.args.Dimension run data modify storage ntils:z fl.new.temp.dim set from storage ntils:api pos.get_dim.out
execute if data storage ntils:z fl.new.args.Dimension run data modify storage ntils:z fl.new.temp.dim set from storage ntils:z fl.new.args.Dimension

execute store result storage ntils:z fl.new.temp.id int 1 run scoreboard players add #FORCELOAD_ID# ntils.z.global 1

data modify storage ntils:z fl.list append from storage ntils:z fl.new.temp

return run scoreboard players get #FORCELOAD_ID# ntils.z.global