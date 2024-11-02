# FL/RUN
#
# Tries to load a chunk and run a function in it the first tick it's loaded, then unloads the chunk.
# Doesn't override any existing forceloads, so if a load already applies to a chunk the command will
# run, but the chunk won't unload.
#
# MACRO INPUTS:
#   -Command: string. The command to run. It will run at the location of the command context, but does not preserve entity context.
#   -Args: object. Object containing optional arguments.
#       -Macro: object. Optional object to be used as 
#
# Performance: Meh
#   It's not great. However, I wouldn't call it bad by any stretch of the imagination.
#   Since the load created still needs dimension and positional context, its like a laggier version
#   of fl/new. However, it's not bad enough to be an actual worry. Please, use this, cut down on datapack bloat.

execute unless score $ntils:fl.ENABLED ntils.API.singularity.flag matches 1.. run return fail

$data modify storage ntils:z fl.run.args set value $(Args)
$data modify storage ntils:z fl.run.data set value {cmd:"$(Command)",space:'',macro:''}
execute if data storage ntils:z fl.run.args.Macro run data modify storage ntils:z fl.run.data.macro set from storage ntils:z fl.run.args.Macro
execute if data storage ntils:z fl.run.args.Macro run data modify storage ntils:z fl.run.data.space set value ' '
execute store result storage ntils:z fl.run.args.id int 1 run function ntils:api/fl/new {Args:{},Name:"ntils.z.fl.run.internal"}

execute summon marker run function ntils:z/fl/run/save
schedule function ntils:z/fl/tick 1t