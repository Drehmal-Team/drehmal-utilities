# SCH/NEW
#
# Schedules a command to run as an entity some amount of ticks in the future. Unlike /schedule, this will preserve entity context and also allows for multiple schedules to run on the same tick.
#
# RETURN VALUE:
#   Returns the integer ID of this particular schedule. Every scheduled command has a unique ID, which is used in the sch/clear/id clear function.
#
# MACRO INPUTS:
#   -Command: The command to run. This will run as the entity this command is run as.
#   -Name: The name ID of this schedule. Used for the sch/clear/name clear function.
#   -Delay: The amount of ticks of delay before running the command.
#   -Args: Optional additional arguments. See list:
#       +Dimension: Use to set the dimension to run the command in. Since getting dimension context is expensive, use this when you already know the dimension this is being run in.
#       +At: Set this to True if you want the scheduled command to also run at the entity. This is slightly better for performance.
#
# PERFORMANCE: Meh
#   The lag of this command depends heavily on what it's being run as and on what additional arguments are being provided.
#   If you can set the command to run At and provide a Dimension, its shockingly good. Otherwise, however, it's mostly Ok, and can be borderline Bad.
#   Still use it to cut down on needless scoreboard timers and the like.

$data modify storage ntils:z sch.new.args set value $(Args)
$data modify storage ntils:z sch.temp set value {cmd:"$(Command)",uuid:'',name:"$(Name)",id:0,dim:'',extra:"",x:0,y:0,z:0}

execute unless data storage ntils:z sch.new.args.At run function ntils:api/pos/get
data modify storage ntils:z sch.temp.extra set value " "
execute if data storage ntils:z sch.new.args.At run data modify storage ntils:z sch.temp.extra set value " positioned as @s "
execute unless data storage ntils:z sch.new.args.At run data modify storage ntils:z sch.temp.x set from storage ntils:api pos.get.out[0]
execute unless data storage ntils:z sch.new.args.At run data modify storage ntils:z sch.temp.y set from storage ntils:api pos.get.out[1]
execute unless data storage ntils:z sch.new.args.At run data modify storage ntils:z sch.temp.z set from storage ntils:api pos.get.out[2]

execute unless data storage ntils:z sch.new.args.Dimension run function ntils:api/pos/get_dim
data modify storage ntils:z sch.temp.dim set from storage ntils:api pos.get_dim.out
execute if data storage ntils:z sch.new.args.Dimension run data modify storage ntils:z sch.temp.dim set from storage ntils:z sch.new.args.Dimension

function ntils:api/uuid/get_hex
data modify storage ntils:z sch.temp.uuid set from storage ntils:api uuid.get_hex.out

$data modify storage ntils:z sch.new.macro set value {gt:0,name:"$(Name)",id:0}

execute store result storage ntils:z sch.temp.id int 1 store result storage ntils:z sch.new.macro.id int 1 run scoreboard players add #SCH_ID ntils.z.global 1

execute store result score #gt ntils.z.temp run time query gametime
$execute store result storage ntils:z sch.new.macro.gt int 1 run scoreboard players add #gt ntils.z.temp $(Delay)
function ntils:z/sch/new/main with storage ntils:z sch.new.macro

schedule function ntils:z/sch/tick 1t

return run scoreboard players get #SCH_ID ntils.z.global