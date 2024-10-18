# FL/RUN
#
# Tries to load a chunk and run a function in it the first tick it's loaded, then unloads the chunk.
# Doesn't override any existing forceloads, so if a load already applies to a chunk the command will
# run, but the chunk won't unload.
#
# MACRO INPUTS:
#   -Command: The command to run. It will run at the location of the command context, but does not preserve entity context.
#
# Performance: Meh
#   It's not great. However, I wouldn't call it bad by any stretch of the imagination.
#   Since the load created still needs dimension and positional context, its like a laggier version
#   of fl/new. However, it's not bad enough to be an actual worry. Please, use this, cut down on datapack bloat.

$execute summon marker run function ntils:z/fl/run/save {Command:"$(Command)"}