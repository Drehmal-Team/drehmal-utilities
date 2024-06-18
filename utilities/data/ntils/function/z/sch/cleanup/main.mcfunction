execute store result score #gt ntils.temp run time query gametime
data modify storage ntils:z sch.cleanup.macro set value {this:0}
execute store result score #loop ntils.temp if data storage ntils:z sch.tick.garbage[]
function ntils:z/sch/cleanup/loop