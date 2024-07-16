# ITEM/REPLACE/WITH_ALL_INV
#
# Run as the player to replace all instances of one item in their inventory with another. Includes bundles (but not shulkers)
#
# Input: ntils:api item.replace.target (full nbt object of the item to replace in the format it appears in Inventory NBT. Slot is automatically removed)
#        ntils:api item.replace.with (full nbt object of the item to replace said items with)
#        ntils:api item.replace.inventory (full player inventory)
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

$data modify storage ntils:z item.replace.args set value $(Args)

execute if data storage ntils:z item.replace.args.Get_Inv run data modify storage ntils:api item.replace.inventory set from entity @s Inventory
execute unless data storage ntils:z item.replace.args.Get_Inv run data modify storage ntils:z item.replace.inventory set from storage ntils:api item.replace.inventory

data remove storage ntils:api item.replace.with.Slot
data remove storage ntils:api item.replace.target.Slot
data remove storage ntils:api item.replace.with.count
data remove storage ntils:api item.replace.target.count

execute in ntils:z/empty run item replace block 0 0 0 container.0 with stone
execute in ntils:z/empty run data modify block 0 0 0 Items[0] set from storage ntils:api item.replace.with

data modify storage ntils:z macro set value {replace:{}}
data modify storage ntils:z macro.replace set from storage ntils:api item.replace.target

scoreboard players set #count ntils.z.int 0

function ntils:z/item/replace/with_all/gen with storage ntils:z macro
execute if data storage ntils:z item.replace.args.Ignore_Bundles run return run scoreboard players get #count ntils.z.int

data modify storage ntils:z macro set value {target:{}}
data modify storage ntils:z macro.target set from storage ntils:api item.replace.target
function ntils:z/item/replace/with_all/bundles with storage ntils:z macro

return run scoreboard players get #count ntils.z.int