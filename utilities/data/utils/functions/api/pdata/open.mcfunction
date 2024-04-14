# PDATA/OPEN
#
# As the current player, adds an Open:True key:val pair to their storage index and removes it from all others.
# This allows you to reference their unique storage like so: utils:api players[{Open:True}].data.<etc>
# Make sure to run pdata/close to remove this once you're finished
#
# Purpose: this allows you to use the utils player unique storage without needing macros

data modify storage utils:api players[].Open set value False
data modify storage utils:z macro set value {id:0}
execute store result storage utils:z macro.id int 1 run scoreboard players get @s utils.id
function utils:z/pdata/open with storage utils:z macro