$data modify storage ntils:z sch.tick.timestamps.$(gt) append from storage ntils:z sch.temp
$execute unless data storage ntils:z sch.tick.garbage[{time:$(gt)}] run data modify storage ntils:z sch.tick.garbage append value {time:$(gt)}
$data modify storage ntils:z sch.tick.garbage[{time:$(gt)}].affected append value {id:$(id),name:"$(name)"}