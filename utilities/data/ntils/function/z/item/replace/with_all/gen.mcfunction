data modify storage ntils:z lists set value {slot:[],count:[]}
$data modify storage ntils:z lists.slot append from storage ntils:api item.replace.inventory[$(replace)].Slot
$data modify storage ntils:z lists.count append from storage ntils:api item.replace.inventory[$(replace)].count

data modify storage ntils:z macro set value {slot:0}

execute store result score #slot ntils.temp store result storage ntils:z macro.slot int 1 run data get storage ntils:z lists.slot[-1]
execute unless score #slot ntils.temp matches 0..35 run data modify storage ntils:z macro.slot set value 0

execute if data storage ntils:z lists.slot[] run function ntils:z/item/replace/with_all/gen_iterate with storage ntils:z macro