function ntils:api/player/storage/open_as
execute in ntils:z/empty run data modify block 0 10 0 Items set value []
execute in ntils:z/empty run item replace block 0 10 0 container.0 from entity @s weapon.offhand
execute in ntils:z/empty run item replace block 0 10 0 container.1 from entity @s armor.head
execute in ntils:z/empty run item replace block 0 10 0 container.2 from entity @s armor.chest
execute in ntils:z/empty run item replace block 0 10 0 container.3 from entity @s armor.legs
execute in ntils:z/empty run item replace block 0 10 0 container.4 from entity @s armor.feet

execute if data storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_value".[{source:"inventory"}] run data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_value".[{source:"inventory"}]
execute if data storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_multiplied_base".[{source:"inventory"}] run data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_multiplied_base".[{source:"inventory"}]
execute if data storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_multiplied_total".[{source:"inventory"}] run data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_multiplied_total".[{source:"inventory"}]

execute in ntils:z/empty run data modify storage ntils:z cstats.on_inv_update.temp set from block 0 10 0 Items

data modify storage ntils:api cstats.edit_modifiers.in.list set value []
data modify storage ntils:api cstats.edit_modifiers.in.list append from storage ntils:z cstats.on_inv_update.temp[{Slot:0b}].components."minecraft:custom_data".ntils.api.cstats.modifiers[{slots:["offhand"]}]
data modify storage ntils:api cstats.edit_modifiers.in.list append from storage ntils:z cstats.on_inv_update.temp[{Slot:1b}].components."minecraft:custom_data".ntils.api.cstats.modifiers[{slots:["head"]}]
data modify storage ntils:api cstats.edit_modifiers.in.list append from storage ntils:z cstats.on_inv_update.temp[{Slot:2b}].components."minecraft:custom_data".ntils.api.cstats.modifiers[{slots:["chest"]}]
data modify storage ntils:api cstats.edit_modifiers.in.list append from storage ntils:z cstats.on_inv_update.temp[{Slot:3b}].components."minecraft:custom_data".ntils.api.cstats.modifiers[{slots:["legs"]}]
data modify storage ntils:api cstats.edit_modifiers.in.list append from storage ntils:z cstats.on_inv_update.temp[{Slot:4b}].components."minecraft:custom_data".ntils.api.cstats.modifiers[{slots:["feet"]}]

data modify storage ntils:api cstats.edit_modifiers.in.source set value "inventory"
function ntils:api/cstats/edit_modifiers


function ntils:api/player/storage/close