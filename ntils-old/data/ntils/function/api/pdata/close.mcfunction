# PDATA/OPEN
#
# Removes Open:True from the players storage, preventing you from being able to access it
# Run this once you're finished with the player storage.
#
# PERFORMANCE: Excellent
#   It's literally just one data modify command.
#   For the sake of readibility, you should still run this as a function (don't copy+paste the command into your code).

data modify storage ntils:api players[].Open set value False
