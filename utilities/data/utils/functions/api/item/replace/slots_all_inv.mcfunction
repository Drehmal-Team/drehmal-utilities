# ITEM/REPLACE/SLOTS_ALL_INV
#
# Run as the player to replace all items in particular slots with one item. Does not respect the item counts of any items that are already there
#
# Input: utils:api item.replace.with (full nbt object of the item to replace said items with)
#        utils:api item.replace.slots (either a number or a list of numbers. specific slot or list of slots to replace)

item replace block -30000000 0 15000000 container.0 with stone
data modify block -30000000 0 15000000 Items[0] set from storage utils:api item.replace.with

data modify storage utils:z templist set value []
execute if data storage utils:api item.replace.slots[] run data modify storage utils:z templist set from storage utils:api item.replace.slots
execute unless data storage utils:api item.replace.slots[] run data modify storage utils:z templist append from storage utils:api item.replace.slots

data modify storage utils:z macro set value {slot:0}
execute store result score #slot utils.temp store result storage utils:z macro.slot int 1 run data get storage utils:z templist[-1]
execute unless score #slot utils.temp matches 0..35 run data modify storage utils:z macro.slot set value 0

execute if data storage utils:z templist[] run function utils:z/item/replace/slots_all/iterate with storage utils:z macro