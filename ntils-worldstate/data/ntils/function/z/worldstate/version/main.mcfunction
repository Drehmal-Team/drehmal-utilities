execute store result score #vers ntils.z.worldstate.temp run data get storage ntils:z worldstate.m.version
execute store result storage ntils:z worldstate.m.version int 1 run scoreboard players add #vers ntils.z.worldstate.temp 1
function ntils:z/worldstate/version/tags with storage ntils:z worldstate.m