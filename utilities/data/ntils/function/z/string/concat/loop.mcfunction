$data modify storage ntils:z string.concat.macro set value {0:'',1:'',2:'',3:'',4:'',5:'',6:'',7:'',out:'$(out)$(0)$(1)$(2)$(3)$(4)$(5)$(6)$(7)'}
data remove storage ntils:z string.concat.in[0]
data remove storage ntils:z string.concat.in[0]
data remove storage ntils:z string.concat.in[0]
data remove storage ntils:z string.concat.in[0]
data remove storage ntils:z string.concat.in[0]
data remove storage ntils:z string.concat.in[0]
data remove storage ntils:z string.concat.in[0]
data remove storage ntils:z string.concat.in[0]
data modify storage ntils:z string.concat.macro.0 set from storage ntils:z string.concat.in[0]
data modify storage ntils:z string.concat.macro.1 set from storage ntils:z string.concat.in[1]
data modify storage ntils:z string.concat.macro.2 set from storage ntils:z string.concat.in[2]
data modify storage ntils:z string.concat.macro.3 set from storage ntils:z string.concat.in[3]
data modify storage ntils:z string.concat.macro.4 set from storage ntils:z string.concat.in[4]
data modify storage ntils:z string.concat.macro.5 set from storage ntils:z string.concat.in[5]
data modify storage ntils:z string.concat.macro.6 set from storage ntils:z string.concat.in[6]
data modify storage ntils:z string.concat.macro.7 set from storage ntils:z string.concat.in[7]
execute if data storage ntils:z string.concat.in[] run function ntils:z/string/concat/loop with storage ntils:z string.concat.macro