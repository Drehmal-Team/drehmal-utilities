execute unless score $ntils:uuid.ENABLED ntils.z.singularity.flag matches 1 run return fail

scoreboard objectives add ntils.z.uuid.temp dummy

scoreboard objectives add ntils.z.uuid.get_int.0 dummy
scoreboard objectives add ntils.z.uuid.get_int.1 dummy
scoreboard objectives add ntils.z.uuid.get_int.2 dummy
scoreboard objectives add ntils.z.uuid.get_int.3 dummy

data modify storage ntils:z uuid.to_hex.macro set value {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0}
