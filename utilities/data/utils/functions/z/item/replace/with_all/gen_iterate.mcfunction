execute store result score #count utils.temp run data get storage utils:z lists.count[-1]
scoreboard players operation #count utils.int += #count utils.temp

execute unless data storage utils:z item.replace.args.Ignore_Count run data modify block -30000000 0 15000000 Items[0].count set from storage utils:z lists.count[-1]
data remove storage utils:z lists.count[-1]
data remove storage utils:z lists.slot[-1]

$execute if score #slot utils.temp matches 0..35 run item replace entity @s container.$(slot) from block -30000000 0 15000000 container.0
execute if score #slot utils.temp matches 100 run function utils:z/item/replace/slots/100
execute if score #slot utils.temp matches 101 run function utils:z/item/replace/slots/101
execute if score #slot utils.temp matches 102 run function utils:z/item/replace/slots/102
execute if score #slot utils.temp matches 103 run function utils:z/item/replace/slots/103
execute if score #slot utils.temp matches -106 run function utils:z/item/replace/slots/-106

execute store result score #slot utils.temp store result storage utils:z macro.slot int 1 run data get storage utils:z lists.slot[-1]
execute unless score #slot utils.temp matches 0..35 run data modify storage utils:z macro.slot set value 0

execute if data storage utils:z lists.slot[] run function utils:z/item/replace/with_all/gen_iterate with storage utils:z macro