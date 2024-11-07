function ntils:api/player/storage/open_as

execute if entity @s[tag=ntils.API.player.state.bow.in_mainhand] in ntils:z/empty run item replace block 0 10 0 container.0 from entity @s weapon.mainhand
execute if entity @s[tag=ntils.API.player.state.bow.in_offhand] in ntils:z/empty run item replace block 0 10 0 container.0 from entity @s weapon.offhand

execute if data storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_value".[{source:"bow"}] run data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_value".[{source:"bow"}]
execute if data storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_multiplied_base".[{source:"bow"}] run data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_multiplied_base".[{source:"bow"}]
execute if data storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_multiplied_total".[{source:"bow"}] run data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_multiplied_total".[{source:"bow"}]

data modify storage ntils:api cstats.edit_modifiers.in.list set value []
execute in ntils:z/empty run data modify storage ntils:api cstats.edit_modifiers.in.list append from block 0 10 0 Items[{Slot:0b}].components."minecraft:custom_data".ntils.api.cstats.modifiers[{slots:["pulling"]}]

data modify storage ntils:api cstats.edit_modifiers.in.source set value "bow"
function ntils:api/cstats/edit_modifiers

function #ntils:api/cstats/stats_update

function ntils:api/player/storage/close