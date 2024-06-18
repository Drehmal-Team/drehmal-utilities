$execute unless data storage ntils:z sch.tick.timestamps.$(gt) run return fail
$data modify storage ntils:z sch.run.macro set from storage ntils:z sch.tick.timestamps.$(gt)[-1]
$data modify storage ntils:z sch.run.macro.gt set value $(gt)
$execute if data storage ntils:z sch.tick.timestamps.$(gt)[] run function ntils:z/sch/run with storage ntils:z sch.run.macro
$data remove storage ntils:z sch.tick.timestamps.$(gt)
$data remove storage ntils:z sch.tick.garbage[{time:$(gt)}]