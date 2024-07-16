data modify storage ntils:z templist set value []
data modify storage ntils:z slotslist set value []
data modify storage ntils:z countslist set value []
$data modify storage ntils:z item.replace.inventory[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[$(target)]}}].components."minecraft:bundle_contents"[$(target)].selection set value True
data modify storage ntils:z templist append from storage ntils:z item.replace.inventory[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{selection:True}]}}]
data modify storage ntils:z countslist append from storage ntils:z templist[].components."minecraft:bundle_contents"[{selection:True}].count
data remove storage ntils:z templist[].components."minecraft:bundle_contents"[{selection:True}].components
data modify storage ntils:z templist[].components."minecraft:bundle_contents"[{selection:True}].components set from storage ntils:api item.replace.with.components
data modify storage ntils:z templist[].components."minecraft:bundle_contents"[{selection:True}].id set from storage ntils:api item.replace.with.id
data remove storage ntils:z templist[].components."minecraft:bundle_contents"[{selection:True}].selection

data modify storage ntils:z slotslist append from storage ntils:z templist[].Slot

execute if data storage ntils:z countslist[] run function ntils:z/item/replace/with_all/bundle_count

data remove storage ntils:z templist[].Slot
execute in ntils:z/empty run data modify block 0 0 0 Items[0] set from storage ntils:z templist[-1]

data modify storage ntils:z macro set value {slot:0}
execute store result score #slot ntils.z.temp store result storage ntils:z macro.slot int 1 run data get storage ntils:z slotslist[-1]
execute unless score #slot ntils.z.temp matches 0..35 run data modify storage ntils:z macro.slot set value 0

execute if data storage ntils:z slotslist[] run function ntils:z/item/replace/with_all/bundles_iterate with storage ntils:z macro