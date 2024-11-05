# PLAYER/STORAGE/OPEN_AS
#
# As the current player, adds an Open:True key:val pair to their storage index and removes it from all others.
# This allows you to reference their unique storage like so: ntils:api players[{Open:True}].data.<etc>
# Make sure to run pdata/close to remove this once you're finished
#
# Purpose: this allows you to use the ntils player unique storage without needing macros
#
# PERFORMANCE: Great
#   Better than our 1.17 options. Still, avoid running this needlessly. Try and only do it at the start of any function that modifies a storage.

execute unless score $ntils:player.ENABLED ntils.API.singularity.flag matches 1 run return fail
function ntils:api/player/storage/close

execute unless predicate ntils:z/player/id/correct run function ntils:z/player/id/check
data modify storage ntils:z player.storage.open.m set value {id:0}
execute store result storage ntils:z player.storage.open.m.id int 1 run scoreboard players get @s ntils.z.player.id
function ntils:z/player/storage/open/main with storage ntils:z player.storage.open.m