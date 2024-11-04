function ntils:api/player/storage/open_as
execute in ntils:z/empty run item replace block 0 10 0 container.0 from entity @s weapon.mainhand

execute if data storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_value".[{source:"mainhand"}] run data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_value".[{source:"mainhand"}]
execute if data storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_multiplied_base".[{source:"mainhand"}] run data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_multiplied_base".[{source:"mainhand"}]
execute if data storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_multiplied_total".[{source:"mainhand"}] run data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_multiplied_total".[{source:"mainhand"}]

data modify storage ntils:api cstats.edit_modifiers.in.list set value []
execute in ntils:z/empty run data modify storage ntils:api cstats.edit_modifiers.in.list append from block 0 10 0 Items[0].components."minecraft:custom_data".ntils.api.cstats.modifiers[{slots:["mainhand"]}]
data modify storage ntils:api cstats.edit_modifiers.in.source set value "mainhand"
function ntils:api/cstats/edit_modifiers






function ntils:api/player/storage/close