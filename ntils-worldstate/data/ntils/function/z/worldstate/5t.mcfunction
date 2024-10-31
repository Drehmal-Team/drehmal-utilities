execute store result score #diff ntils.z.worldstate.temp run data modify storage ntils:z worldstate.prev set from storage ntils:api worldstate
execute if score #diff ntils.z.worldstate.temp matches 1 run function ntils:z/worldstate/version/main

function ntils:z/worldstate/check with storage ntils:z worldstate.m
schedule function ntils:z/worldstate/5t 5t