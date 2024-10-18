# EDATA/REMOVE
#
# Takes a list of nbt keys and removes them from an entity. Use this for deleting "problem" data, like CustomName or Owner
# NOTE: This will remove the entity from any team and delete ANY SCORES it has! Sadly, this seems unavoidable. Talk to mojang if you have an issue.
#
# IN: string array
#
# PERFORMANCE: Bad
#   This is a last resort function for NBT that is completely unremovable. Do not make a habit of using this under any circumstance.

function ntils:api/edata/get_id

execute on passengers run tag @s add ntils.z.edata.remove.was_riding_me
execute on vehicle run tag @s add ntils.z.edata.remove.i_was_riding_this

ride @s dismount

tag @s add ntils.z.edata.remove.temp

data modify storage ntils:z macro set value {nbt:{},id:""}
data modify storage ntils:z macro.nbt set from entity @s {}
data remove storage ntils:z macro.nbt.Passengers

data modify storage ntils:z edata.macro set value {s1:'a',s2:'a',s3:'a'}
data modify storage ntils:z edata.macro.s1 set from storage ntils:api edata.remove.in[-1]
data modify storage ntils:z edata.macro.s2 set from storage ntils:api edata.remove.in[-2]
data modify storage ntils:z edata.macro.s3 set from storage ntils:api edata.remove.in[-3]
execute if data storage ntils:api edata.remove.in[] run function ntils:z/edata/remove/loop with storage ntils:z edata.macro

execute in ntils:z/empty run teleport @s 0 -1000 0
kill @s

data modify storage ntils:z macro.id set from storage ntils:api edata.get_id.out
function ntils:z/edata/remove/main with storage ntils:z macro