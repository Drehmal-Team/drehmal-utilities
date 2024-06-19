data modify storage ntils:z sch.tick.macro set value {gt:0}
execute store result storage ntils:z sch.tick.macro.gt int 1 store result score #cleanup_check ntils.temp run time query gametime
scoreboard players operation #cleanup_check ntils.temp %= #CLEANUP_CYCLE# ntils.const
execute if score #cleanup_check ntils.temp matches 0 run function ntils:z/sch/cleanup/main
function ntils:z/sch/check with storage ntils:z sch.tick.macro
execute if data storage ntils:z sch.tick.garbage[] run schedule function ntils:z/sch/tick 1t