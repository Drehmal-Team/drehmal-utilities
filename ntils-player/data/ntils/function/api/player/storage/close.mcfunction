# PLAYER/STORAGE/OPEN
#
# Removes Open:True from the players storage, preventing you from being able to access it
# Run this once you're finished with the player storage.
#
# PERFORMANCE: Excellent
#   It's literally just one data modify command.
#   For the sake of readibility, you should still run this as a function (don't copy+paste the command into your code).

execute unless score $ntils:player.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail

execute if data storage ntils:api player.storage[] run data modify storage ntils:api player.storage[].Open set value False