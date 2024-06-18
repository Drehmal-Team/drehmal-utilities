# PDATA/OPEN
#
# Removes Open:True from the players storage, preventing you from being able to access it
# Run this once you're finished with the player storage.

data modify storage ntils:api players[].Open set value False
