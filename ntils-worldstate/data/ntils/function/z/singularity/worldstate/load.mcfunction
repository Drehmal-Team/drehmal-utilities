execute unless score $ntils:worldstate.ENABLED ntils.API.singularity.flag matches 1 run return fail

scoreboard objectives add ntils.z.worldstate.temp dummy

execute unless data storage ntils:api worldstate run function ntils:z/singularity/worldstate/startup
schedule function ntils:z/worldstate/5t 1t