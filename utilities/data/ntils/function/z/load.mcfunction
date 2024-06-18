scoreboard objectives add ntils.temp dummy
scoreboard objectives add ntils.int dummy
scoreboard objectives add ntils.const dummy
scoreboard objectives add ntils.global dummy
scoreboard objectives add ntils.bool dummy

scoreboard objectives add ntils.API dummy
scoreboard objectives add ntils.API.id dummy

scoreboard objectives add ntils.id dummy

scoreboard objectives add ntils.tag_scores.checked dummy

scoreboard objectives add ntils.inv.update dummy

scoreboard objectives add ntils.heal dummy

scoreboard objectives add ntils.death minecraft.custom:deaths

scoreboard objectives add ntils.combat.invul.on dummy

# SCHEDULE LOOPS #

execute if data storage ntils:z sch.tick.garbage[] run function ntils:z/sch/cleanup/main
execute if data storage ntils:z sch.tick.garbage[] run schedule function ntils:z/sch/tick 1t

# PARTICLE EFFECT SCOREBOARDS #

scoreboard objectives add ntils.p.x1_mod dummy
scoreboard objectives add ntils.p.y1_mod dummy
scoreboard objectives add ntils.p.z1_mod dummy
scoreboard objectives add ntils.p.x2_mod dummy
scoreboard objectives add ntils.p.y2_mod dummy
scoreboard objectives add ntils.p.z2_mod dummy
scoreboard objectives add ntils.p.x3 dummy
scoreboard objectives add ntils.p.y3 dummy
scoreboard objectives add ntils.p.z3 dummy

scoreboard objectives add ntils.p.loop dummy
scoreboard objectives add ntils.p.loop_step dummy
scoreboard objectives add ntils.p.loop_max dummy
scoreboard objectives add ntils.p.loop_sentinel dummy

# SCHWITH SCOREBOARDS #

scoreboard objectives add ntils.sch.cache.0 dummy
scoreboard objectives add ntils.sch.cache.1 dummy
scoreboard objectives add ntils.sch.cache.2 dummy
scoreboard objectives add ntils.sch.cache.3 dummy

# NUMERICAL CONSTANTS #

scoreboard players set #-1 ntils.const -1
scoreboard players set #2 ntils.const 2
scoreboard players set #3 ntils.const 3
scoreboard players set #4 ntils.const 4
scoreboard players set #5 ntils.const 5
scoreboard players set #8 ntils.const 8

scoreboard players set #120 ntils.const 120
scoreboard players set #180 ntils.const 180
scoreboard players set #360 ntils.const 360
scoreboard players set #36000 ntils.const 36000

scoreboard players set #100 ntils.const 100
scoreboard players set #1000 ntils.const 1000
scoreboard players set #10000 ntils.const 10000

scoreboard players set #2^6 ntils.const 64
scoreboard players set #2^8 ntils.const 256
scoreboard players set #2^12 ntils.const 4096
scoreboard players set #2^16 ntils.const 65536
scoreboard players set #2^18 ntils.const 262144
scoreboard players set #2^24 ntils.const 16777215

# TIME CONSTANTS #

scoreboard players set #TIME.MINUTE ntils.const 1200
scoreboard players set #TIME.DAY ntils.const 24000

# MISC CONSTANTS #

scoreboard players set #CLEANUP_CYCLE# ntils.const 6000

# FORCELOADS #

execute in ntils:z/empty run forceload add 0 0

forceload add -30000000 15000000
setblock -30000000 0 15000000 barrel

setblock -30000000 46 15000000 minecraft:repeating_command_block{auto:True,Command:"function ntils:z/combat/invul/block"}

# LOOKUP TABLES #

function ntils:z/lookups/load