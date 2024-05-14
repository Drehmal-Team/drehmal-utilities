data remove storage utils:api edata.remove.in[-1]
data remove storage utils:api edata.remove.in[-1]
data remove storage utils:api edata.remove.in[-1]
$data remove storage utils:z macro.nbt.$(s1)
$data remove storage utils:z macro.nbt.$(s2)
$data remove storage utils:z macro.nbt.$(s3)
data modify storage utils:z edata.macro set value {s1:'a',s2:'a',s3:'a'}
data modify storage utils:z edata.macro.s1 set from storage utils:api edata.remove.in[-1]
data modify storage utils:z edata.macro.s2 set from storage utils:api edata.remove.in[-2]
data modify storage utils:z edata.macro.s3 set from storage utils:api edata.remove.in[-3]
execute if data storage utils:api edata.remove.in[] run function utils:z/edata/remove/loop with storage utils:z edata.macro
