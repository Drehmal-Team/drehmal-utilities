execute unless entity @s[tag=utils.z.id] run return run function utils:z/player/id/new

data modify storage n_art:storage macro set value {uuid:''}
data modify storage n_art:storage macro.uuid set from entity @s UUID

function utils:z/player/id/fetch_macro with storage n_art:storage macro