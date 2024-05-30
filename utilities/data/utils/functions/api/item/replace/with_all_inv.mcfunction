# ITEM/REPLACE/WITH_ALL_INV
#
# Run as the player to replace all instances of one item in their inventory with another. Includes bundles (but not shulkers)
#
# Input: utils:api item.replace.target (full nbt object of the item to replace in the format it appears in Inventory NBT. Slot is automatically removed)
#        utils:api item.replace.with (full nbt object of the item to replace said items with)
#        utils:api item.replace.inventory (full player inventory)
#
# MACRO INPUTS:
# - Args: NBT object containing various optional toggles. The actual value doesnt matter, if the key is included the override is included
#         - Ignore_Count:bool (if the item count of the old item slots should be ignored)
#         - Ignore_Bundles:bool (if bundles should be ignores)
#         - Get_Inv:bool (if the players inventory data should be collected in this function)
#
# RETURN:
# execute store result ... run <this>
# - returns the amount of items replaced, if any

$data modify storage utils:z item.replace.args set value $(Args)

execute if data storage utils:z item.replace.args.Get_Inv run data modify storage utils:api item.replace.inventory set from entity @s Inventory
execute unless data storage utils:z item.replace.args.Get_Inv run data modify storage utils:z item.replace.inventory set from storage utils:api item.replace.inventory

data remove storage utils:api item.replace.with.Slot
data remove storage utils:api item.replace.target.Slot
data remove storage utils:api item.replace.with.count
data remove storage utils:api item.replace.target.count

item replace block -30000000 0 15000000 container.0 with stone
data modify block -30000000 0 15000000 Items[0] set from storage utils:api item.replace.with

data modify storage utils:z macro set value {replace:{}}
data modify storage utils:z macro.replace set from storage utils:api item.replace.target

scoreboard players set #count utils.int 0

function utils:z/item/replace/with_all/gen with storage utils:z macro
execute if data storage utils:z item.replace.args.Ignore_Bundles run return run scoreboard players get #count utils.int

data modify storage utils:z macro set value {target:{}}
data modify storage utils:z macro.target set from storage utils:api item.replace.target
function utils:z/item/replace/with_all/bundles with storage utils:z macro

return run scoreboard players get #count utils.int