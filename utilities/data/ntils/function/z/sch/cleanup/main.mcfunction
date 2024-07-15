execute store result score #gt ntils.z.temp run time query gametime
data modify storage ntils:z sch.cleanup.macro set value {this:0}
execute store result score #loop ntils.z.temp if data storage ntils:z sch.tick.garbage[]
function ntils:z/sch/cleanup/loop