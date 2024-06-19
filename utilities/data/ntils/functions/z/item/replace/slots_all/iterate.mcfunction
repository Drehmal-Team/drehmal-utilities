data remove storage ntils:z templist[-1]

$execute if score #slot ntils.temp matches 0..35 run item replace entity @s container.$(slot) from block -30000000 0 15000000 container.0
execute if score #slot ntils.temp matches 100 run function ntils:z/item/replace/slots/100
execute if score #slot ntils.temp matches 101 run function ntils:z/item/replace/slots/101
execute if score #slot ntils.temp matches 102 run function ntils:z/item/replace/slots/102
execute if score #slot ntils.temp matches 103 run function ntils:z/item/replace/slots/103
execute if score #slot ntils.temp matches -106 run function ntils:z/item/replace/slots/-106

execute store result score #slot ntils.temp store result storage ntils:z macro.slot int 1 run data get storage ntils:z templist[-1]
execute unless score #slot ntils.temp matches 0..35 run data modify storage ntils:z macro.slot set value 0

execute if data storage ntils:z templist[] run function ntils:z/item/replace/slots_all/iterate with storage ntils:z macro