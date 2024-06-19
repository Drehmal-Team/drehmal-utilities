data remove storage ntils:z sch.clear.list[-1]
$data remove storage ntils:z sch.tick.timestamps.$(time)[{$(loc):$(q1)$(clear)$(q2)}]
$execute unless data storage ntils:z sch.tick.timestamps.$(time)[] run data remove storage ntils:z sch.tick.garbage[{time:$(time)}]
$execute unless data storage ntils:z sch.tick.timestamps.$(time)[] run data remove storage ntils:z sch.tick.timestamps.$(time)

data modify storage ntils:z sch.clear.macro.time set from storage ntils:z sch.clear.list[-1]
execute if data storage ntils:z sch.clear.list[] run function ntils:z/sch/clear/loop with storage ntils:z sch.clear.macro