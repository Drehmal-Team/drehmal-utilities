# EDATA/REMOVE
#
# Takes a list of nbt keys and removes them from an entity. Use this for deleting "problem" data, like CustomName or Owner
# NOTE: This will remove the entity from any team and delete ANY SCORES it has! Sadly, this seems unavoidable. Talk to mojang if you have an issue.
#
# IN: string array

execute on passengers run tag @s add utils.z.was_riding_me
execute on vehicle run tag @s add utils.z.i_was_riding_this

ride @s dismount

tag @s add utils.z.temp

data modify storage utils:z macro set value {nbt:{},id:""}
data modify storage utils:z macro.nbt set from entity @s {}
data remove storage utils:z macro.nbt.Passengers

data modify storage utils:z edata.macro set value {s1:'a',s2:'a',s3:'a'}
data modify storage utils:z edata.macro.s1 set from storage utils:api edata.remove.in[-1]
data modify storage utils:z edata.macro.s2 set from storage utils:api edata.remove.in[-2]
data modify storage utils:z edata.macro.s3 set from storage utils:api edata.remove.in[-3]
execute if data storage utils:api edata.remove.in[] run function utils:z/edata/remove/loop with storage utils:z edata.macro

execute summon block_display run function utils:z/cname/delete/as_disp

execute in utils:z/empty run teleport @s 0 -1000 0
kill @s

function utils:z/cname/delete/main with storage utils:z macro