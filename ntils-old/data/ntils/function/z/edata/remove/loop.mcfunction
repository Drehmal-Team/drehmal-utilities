data remove storage ntils:api edata.remove.in[-1]
data remove storage ntils:api edata.remove.in[-1]
data remove storage ntils:api edata.remove.in[-1]
$data remove storage ntils:z macro.nbt.$(s1)
$data remove storage ntils:z macro.nbt.$(s2)
$data remove storage ntils:z macro.nbt.$(s3)
data modify storage ntils:z edata.macro set value {s1:'a',s2:'a',s3:'a'}
data modify storage ntils:z edata.macro.s1 set from storage ntils:api edata.remove.in[-1]
data modify storage ntils:z edata.macro.s2 set from storage ntils:api edata.remove.in[-2]
data modify storage ntils:z edata.macro.s3 set from storage ntils:api edata.remove.in[-3]
execute if data storage ntils:api edata.remove.in[] run function ntils:z/edata/remove/loop with storage ntils:z edata.macro
