execute store result score #count ntils.z.temp run data get storage ntils:z lists.count[-1]
scoreboard players operation #count ntils.z.int += #count ntils.z.temp

execute unless data storage ntils:z item.replace.args.Ignore_Count in ntils:z/empty run data modify block 0 0 0 Items[0].count set from storage ntils:z lists.count[-1]
data remove storage ntils:z lists.count[-1]
data remove storage ntils:z lists.slot[-1]

$execute if score #slot ntils.z.temp matches 0..35 in ntils:z/empty run item replace entity @s container.$(slot) from block 0 0 0 container.0
execute if score #slot ntils.z.temp matches 100 run function ntils:z/item/replace/slots/100
execute if score #slot ntils.z.temp matches 101 run function ntils:z/item/replace/slots/101
execute if score #slot ntils.z.temp matches 102 run function ntils:z/item/replace/slots/102
execute if score #slot ntils.z.temp matches 103 run function ntils:z/item/replace/slots/103
execute if score #slot ntils.z.temp matches -106 run function ntils:z/item/replace/slots/-106

execute store result score #slot ntils.z.temp store result storage ntils:z macro.slot int 1 run data get storage ntils:z lists.slot[-1]
execute unless score #slot ntils.z.temp matches 0..35 run data modify storage ntils:z macro.slot set value 0

execute if data storage ntils:z lists.slot[] run function ntils:z/item/replace/with_all/gen_iterate with storage ntils:z macro