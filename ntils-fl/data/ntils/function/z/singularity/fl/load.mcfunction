execute unless score $ntils:fl.ENABLED ntils.API.flag matches 1.. run return fail

scoreboard objectives add ntils.z.fl.temp dummy
scoreboard objectives add ntils.z.fl.int dummy

execute if data storage ntils:z fl.list[{name:"ntils.z.fl.run.internal"}] run schedule function ntils:z/fl/tick 1t