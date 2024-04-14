# STRING/CONCAT
#
# Modify the data of utils.api concat.in with the array you want to turn into a string
# The resulting string will be located at utils.api concat.out

data modify storage utils:api concat.out set value ''
data modify storage utils:z concat.macro set value {0:'',1:'',2:'',3:'',4:'',5:'',6:'',7:'',out:''}
data modify storage utils:z concat.macro.0 set from storage utils:api concat.in[0]
data modify storage utils:z concat.macro.1 set from storage utils:api concat.in[1]
data modify storage utils:z concat.macro.2 set from storage utils:api concat.in[2]
data modify storage utils:z concat.macro.3 set from storage utils:api concat.in[3]
data modify storage utils:z concat.macro.4 set from storage utils:api concat.in[4]
data modify storage utils:z concat.macro.5 set from storage utils:api concat.in[5]
data modify storage utils:z concat.macro.6 set from storage utils:api concat.in[6]
data modify storage utils:z concat.macro.7 set from storage utils:api concat.in[7]
execute if data storage utils:api concat.in[] run function utils:z/string/concat/loop with storage utils:z concat.macro
data modify storage utils:api concat.out set from storage utils:z concat.macro.out