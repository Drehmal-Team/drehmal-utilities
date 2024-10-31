# PLAYER/STORAGE/OPEN_AS
#
# Using a passed ntils.API.player.id score, adds an Open:True key:val pair to their storage index and removes it from all others.
# This allows you to reference their unique storage like so: ntils:api players[{Open:True}].data.<etc>
# Make sure to run pdata/close to remove this once you're finished
#
# INPUT:
#   - #player.storage.open.in ntils.API: Scoreboard for the ID of the player whose storage you want to open.
#
# Purpose: this allows you to use the ntils player unique storage without needing macros
#
# PERFORMANCE: Great
#   Better than our 1.17 options. Still, avoid running this needlessly. Try and only do it at the start of any function that modifies a storage.
#   Slightly better than the open_as function because that has to check that an ID already exists as a failsafe.

execute unless score $ntils:player.ENABLED ntils.API.singularity.flag matches 1 run return fail

data modify storage ntils:api player[].Open set value False
data modify storage ntils:z player.storage.open.m set value {id:0}
execute store result storage ntils:z player.storage.open.m.id int 1 run scoreboard players get #player.storage.open.in ntils.API
function ntils:z/player/storage/open/main with storage ntils:z pdata.open.macro