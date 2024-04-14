execute unless entity @s[tag=utils.z.id] run return run function utils:z/player/id/new

data modify storage utils:z macro set value {uuid:''}
data modify storage utils:z macro.uuid set from entity @s UUID

function utils:z/player/id/fetch_macro with storage utils:z macro