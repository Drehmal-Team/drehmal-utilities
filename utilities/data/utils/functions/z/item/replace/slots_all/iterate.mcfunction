data remove storage utils:z templist[-1]

$execute if score #slot utils.temp matches 0..35 run item replace entity @s container.$(slot) from block -30000000 0 15000000 container.0
execute if score #slot utils.temp matches 100 run function utils:z/item/replace/slots/100
execute if score #slot utils.temp matches 101 run function utils:z/item/replace/slots/101
execute if score #slot utils.temp matches 102 run function utils:z/item/replace/slots/102
execute if score #slot utils.temp matches 103 run function utils:z/item/replace/slots/103
execute if score #slot utils.temp matches -106 run function utils:z/item/replace/slots/-106

execute store result score #slot utils.temp store result storage utils:z macro.slot int 1 run data get storage utils:z templist[-1]
execute unless score #slot utils.temp matches 0..35 run data modify storage utils:z macro.slot set value 0

execute if data storage utils:z templist[] run function utils:z/item/replace/slots_all/iterate with storage utils:z macro