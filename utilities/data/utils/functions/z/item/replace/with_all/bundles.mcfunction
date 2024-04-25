data modify storage utils:z templist set value []
data modify storage utils:z slotslist set value []
$data modify storage utils:z templist append from storage utils:api item.replace.inventory[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[$(target)]}}]
$data modify storage utils:z templist[].components."minecraft:bundle_contents"[$(target)] merge value $(with)
data modify storage utils:z slotslist append from storage utils:z templist[].Slot
data remove storage utils:z templist[].Slot
data modify block -30000000 0 15000000 Items[0] set from storage utils:z templist[-1]

data modify storage utils:z macro set value {slot:0}
execute store result score #slot utils.temp store result storage utils:z macro.slot int 1 run data get storage utils:z slotslist[-1]
execute unless score #slot utils.temp matches 0..35 run data modify storage utils:z macro.slot set value 0

function utils:z/item/replace/with_all/bundles_iterate with storage utils:z macro