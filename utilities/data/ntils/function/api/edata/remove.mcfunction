# EDATA/REMOVE
#
# Takes a list of nbt keys and removes them from an entity. Use this for deleting "problem" data, like CustomName or Owner
# NOTE: This will remove the entity from any team and delete ANY SCORES it has! Sadly, this seems unavoidable. Talk to mojang if you have an issue.
#
# IN: string array

execute on passengers run tag @s add ntils.z.was_riding_me
execute on vehicle run tag @s add ntils.z.i_was_riding_this

ride @s dismount

tag @s add ntils.z.temp

data modify storage ntils:z macro set value {nbt:{},id:""}
data modify storage ntils:z macro.nbt set from entity @s {}
data remove storage ntils:z macro.nbt.Passengers

data modify storage ntils:z edata.macro set value {s1:'a',s2:'a',s3:'a'}
data modify storage ntils:z edata.macro.s1 set from storage ntils:api edata.remove.in[-1]
data modify storage ntils:z edata.macro.s2 set from storage ntils:api edata.remove.in[-2]
data modify storage ntils:z edata.macro.s3 set from storage ntils:api edata.remove.in[-3]
execute if data storage ntils:api edata.remove.in[] run function ntils:z/edata/remove/loop with storage ntils:z edata.macro

execute summon block_display run function ntils:z/cname/delete/as_disp

execute in ntils:z/empty run teleport @s -30000000 -1000 15000000
kill @s

function ntils:z/cname/delete/main with storage ntils:z macro