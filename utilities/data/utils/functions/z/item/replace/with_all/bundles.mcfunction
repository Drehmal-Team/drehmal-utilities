data modify storage utils:z templist set value []
data modify storage utils:z slotslist set value []
data modify storage utils:z countslist set value []
$data modify storage utils:z item.replace.inventory[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[$(target)]}}].components."minecraft:bundle_contents"[$(target)].selection set value True
data modify storage utils:z templist append from storage utils:z item.replace.inventory[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{selection:True}]}}]
data modify storage utils:z countslist append from storage utils:z templist[].components."minecraft:bundle_contents"[{selection:True}].count
data remove storage utils:z templist[].components."minecraft:bundle_contents"[{selection:True}].components
data modify storage utils:z templist[].components."minecraft:bundle_contents"[{selection:True}].components set from storage utils:api item.replace.with.components
data modify storage utils:z templist[].components."minecraft:bundle_contents"[{selection:True}].id set from storage utils:api item.replace.with.id
data remove storage utils:z templist[].components."minecraft:bundle_contents"[{selection:True}].selection

data modify storage utils:z slotslist append from storage utils:z templist[].Slot

execute if data storage utils:z countslist[] run function utils:z/item/replace/with_all/bundle_count

data remove storage utils:z templist[].Slot
data modify block -30000000 0 15000000 Items[0] set from storage utils:z templist[-1]

data modify storage utils:z macro set value {slot:0}
execute store result score #slot utils.temp store result storage utils:z macro.slot int 1 run data get storage utils:z slotslist[-1]
execute unless score #slot utils.temp matches 0..35 run data modify storage utils:z macro.slot set value 0

execute if data storage utils:z slotslist[] run function utils:z/item/replace/with_all/bundles_iterate with storage utils:z macro