# PDATA/OPEN
#
# As the current player, adds an Open:True key:val pair to their storage index and removes it from all others.
# This allows you to reference their unique storage like so: ntils:api players[{Open:True}].data.<etc>
# Make sure to run pdata/close to remove this once you're finished
#
# Purpose: this allows you to use the ntils player unique storage without needing macros
#
# PERFORMANCE: Great
#   Better than our 1.17 options. Still, avoid running this needlessly, try and only do it at the start of any function that modifies a storage.

data modify storage ntils:api players[].Open set value False
data modify storage ntils:z pdata.open.macro set value {id:0}
execute store result storage ntils:z pdata.open.macro.id int 1 run scoreboard players get @s ntils.z.pdata.id
function ntils:z/pdata/open/main with storage ntils:z pdata.open.macro