function ntils:api/player/storage/open_as

execute if data storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_value".[{source:"bow"}] run data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_value".[{source:"bow"}]
execute if data storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_multiplied_base".[{source:"bow"}] run data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_multiplied_base".[{source:"bow"}]
execute if data storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_multiplied_total".[{source:"bow"}] run data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[]."add_multiplied_total".[{source:"bow"}]

function ntils:api/cstats/refresh_stats

function #ntils:api/cstats/stats_update

function ntils:api/player/storage/close