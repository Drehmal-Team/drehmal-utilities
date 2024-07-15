scoreboard players remove #loop ntils.z.temp 1
execute store result score #this ntils.z.temp store result storage ntils:z sch.cleanup.macro.this int 1 run data get storage ntils:z sch.tick.garbage[0].time
execute if score #this ntils.z.temp < #gt ntils.z.temp run function ntils:z/sch/cleanup/delete with storage ntils:z sch.cleanup.macro
execute unless score #this ntils.z.temp < #gt ntils.z.temp run data modify storage ntils:z sch.tick.garbage append from storage ntils:z sch.tick.garbage[0]
data remove storage ntils:z sch.tick.garbage[0]
execute if score #loop ntils.z.temp matches 1.. run function ntils:z/sch/cleanup/loop