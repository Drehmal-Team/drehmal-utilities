# SCH/NEW
#
# Schedules a command to run some amount of ticks in the future. Unlike /schedule, this can be used to preserve entity/position/dimension context and also allows for multiple schedules to run on the same tick.
#
# RETURN VALUE:
#   Returns the integer ID of this particular schedule. Every scheduled command has a unique ID, which is used in the sch/clear/id clear function.
#
# MACRO INPUTS:
#   -Command: The command to run. This will run with the provided context.
#   -Name: The name ID of this schedule. Used for the sch/clear/name clear function.
#   -Delay: The amount of ticks of delay before running the command.
#   -Args: Optional additional arguments. See list:
#       +Dimension: Use to set the dimension to run the command in. 
#                   Since getting dimension context is expensive, it is much better for performance to specify this here.
#       +At: Set this to True if you want the scheduled command to also run at the entity. Alternatively, set it to [double, double, double] to have it run the command at that particular position.
#            Doing either of these is better for performance.
#       +As: Set this to True if you want the scheduled command to run as whatever entity this function was called as.
#            This is worse for performance, as it has to get the entities hex UUID.
#       +Macro: An nbt object containing any macro arguments you want to use. Use this if you want to do nested macro calls using this scheduler.
#               It's better to use this than to put the macro into Command because Command is a string while this is an object. Performs the same either way.
#
# PERFORMANCE: Meh
#   The lag of this command depends heavily on what it's being run as and on what additional arguments are being provided.
#   The fastest way to run this is with Dimension provided, As unspecified, and a hardcoded At position. The slowest is with only the As flag as true.
#   If you can set the command to run At and provide a Dimension, its shockingly good. Otherwise, however, it's mostly Ok, and can be borderline Bad.
#   Still use it to cut down on needless scoreboard timers and the like.

$data modify storage ntils:z sch.new.args set value $(Args)
$data modify storage ntils:z sch.temp set value {cmd:"$(Command)",uuid:'',name:"$(Name)",id:0,dim:'',extra:' positioned ',s:" ",extra2:'',extra3:'',macro:'',x:'',y:'',z:''}

# Preserve dimension context
execute unless data storage ntils:z sch.new.args.Dimension run function ntils:api/pos/get_dim
data modify storage ntils:z sch.temp.dim set from storage ntils:api pos.get_dim.out
execute if data storage ntils:z sch.new.args.Dimension run data modify storage ntils:z sch.temp.dim set from storage ntils:z sch.new.args.Dimension

# Preserve entity context
execute if data storage ntils:z sch.new.args.As run function ntils:api/uuid/get_hex
execute if data storage ntils:z sch.new.args.As run data modify storage ntils:z sch.temp.uuid set from storage ntils:api uuid.get_hex.out
execute if data storage ntils:z sch.new.args.As run data modify storage ntils:z sch.temp.extra2 set value " as "

# Preserve position context
execute unless data storage ntils:z sch.new.args.At run function ntils:api/pos/get
execute unless data storage ntils:z sch.new.args.At run data modify storage ntils:z sch.new.pos set from storage ntils:api pos.get.out
execute if data storage ntils:z {sch:{new:{args:{At:True}}}} run data modify storage ntils:z sch.new.pos set value ['','','']
execute if data storage ntils:z {sch:{new:{args:{At:True}}}} run data modify storage ntils:z sch.temp.s set value ''
execute if data storage ntils:z sch.new.args.At[] run data modify storage ntils:z sch.new.pos set from storage ntils:z sch.new.args.At
execute if data storage ntils:z {sch:{new:{args:{At:True}}}} run data modify storage ntils:z sch.temp.extra set value " positioned as @s "

data modify storage ntils:z sch.temp.x set from storage ntils:z sch.new.pos[0]
data modify storage ntils:z sch.temp.y set from storage ntils:z sch.new.pos[1]
data modify storage ntils:z sch.temp.z set from storage ntils:z sch.new.pos[2]

# Add macro
execute if data storage ntils:z sch.new.args.Macro run data modify storage ntils:z sch.temp.macro set from storage ntils:z sch.new.args.Macro
execute if data storage ntils:z sch.new.args.Macro run data modify storage ntils:z sch.temp.extra3 set value ' '

$data modify storage ntils:z sch.new.macro set value {gt:0,name:"$(Name)",id:0}

execute store result storage ntils:z sch.temp.id int 1 store result storage ntils:z sch.new.macro.id int 1 run scoreboard players add #SCH_ID ntils.z.global 1

execute store result score #gt ntils.z.temp run time query gametime
$execute store result storage ntils:z sch.new.macro.gt int 1 run scoreboard players add #gt ntils.z.temp $(Delay)
function ntils:z/sch/new/main with storage ntils:z sch.new.macro

schedule function ntils:z/sch/tick 1t

return run scoreboard players get #SCH_ID ntils.z.global