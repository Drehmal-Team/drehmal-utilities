data modify storage utils:z lists set value {slot:[],count:[]}
$data modify storage utils:z lists.slot append from storage utils:api item.replace.inventory[$(replace)].Slot
$data modify storage utils:z lists.count append from storage utils:api item.replace.inventory[$(replace)].count

data modify storage utils:z macro set value {slot:0}

execute store result score #slot utils.temp store result storage utils:z macro.slot int 1 run data get storage utils:z lists.slot[-1]
execute unless score #slot utils.temp matches 0..35 run data modify storage utils:z macro.slot set value 0

execute if data storage utils:z lists.slot[] run function utils:z/item/replace/with_all/gen_iterate with storage utils:z macro