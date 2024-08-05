scoreboard objectives add ntils.z.temp dummy
scoreboard objectives add ntils.z.int dummy
scoreboard objectives add ntils.z.const dummy
scoreboard objectives add ntils.z.global dummy
scoreboard objectives add ntils.z.bool dummy

scoreboard objectives add ntils.API dummy
scoreboard objectives add ntils.API.id dummy

scoreboard objectives add ntils.z.id dummy

scoreboard objectives add ntils.z.tag_scores.checked dummy

scoreboard objectives add ntils.z.player.inv.update.bool dummy

scoreboard objectives add ntils.z.combat.heal.subtick dummy

scoreboard objectives add ntils.z.combat.death minecraft.custom:deaths

scoreboard objectives add ntils.z.combat.fire.clear.bool dummy

scoreboard objectives add ntils.z.combat.fire.light.bool dummy

# SCHEDULE LOOPS #

execute if data storage ntils:z sch.tick.garbage[] run function ntils:z/sch/cleanup/main
execute if data storage ntils:z sch.tick.garbage[] run schedule function ntils:z/sch/tick 1t

# PARTICLE EFFECT SCOREBOARDS #

scoreboard objectives add ntils.z.p.x1_mod dummy
scoreboard objectives add ntils.z.p.y1_mod dummy
scoreboard objectives add ntils.z.p.z1_mod dummy
scoreboard objectives add ntils.z.p.x2_mod dummy
scoreboard objectives add ntils.z.p.y2_mod dummy
scoreboard objectives add ntils.z.p.z2_mod dummy
scoreboard objectives add ntils.z.p.x3 dummy
scoreboard objectives add ntils.z.p.y3 dummy
scoreboard objectives add ntils.z.p.z3 dummy

scoreboard objectives add ntils.z.p.loop dummy
scoreboard objectives add ntils.z.p.loop_step dummy
scoreboard objectives add ntils.z.p.loop_max dummy
scoreboard objectives add ntils.z.p.loop_sentinel dummy

# SCHWITH SCOREBOARDS #

scoreboard objectives add ntils.z.uuid.get_int.0 dummy
scoreboard objectives add ntils.z.uuid.get_int.1 dummy
scoreboard objectives add ntils.z.uuid.get_int.2 dummy
scoreboard objectives add ntils.z.uuid.get_int.3 dummy

# BEIZER ITERATION SCOREBOARDS #

scoreboard objectives add ntils.z.math.bz.i.vec.x dummy
scoreboard objectives add ntils.z.math.bz.i.vec.y dummy
scoreboard objectives add ntils.z.math.bz.i.vec.z dummy

scoreboard objectives add ntils.z.math.bz.i.accel.x dummy
scoreboard objectives add ntils.z.math.bz.i.accel.y dummy
scoreboard objectives add ntils.z.math.bz.i.accel.z dummy

scoreboard objectives add ntils.z.math.bz.i.vec_s.x dummy
scoreboard objectives add ntils.z.math.bz.i.vec_s.y dummy
scoreboard objectives add ntils.z.math.bz.i.vec_s.z dummy

scoreboard objectives add ntils.z.math.bz.i.base.x dummy
scoreboard objectives add ntils.z.math.bz.i.base.y dummy
scoreboard objectives add ntils.z.math.bz.i.base.z dummy

scoreboard objectives add ntils.z.math.bz.i.temp dummy

# NUMERICAL CONSTANTS #

scoreboard players set #-1 ntils.z.const -1
scoreboard players set #2 ntils.z.const 2
scoreboard players set #3 ntils.z.const 3
scoreboard players set #4 ntils.z.const 4
scoreboard players set #5 ntils.z.const 5
scoreboard players set #8 ntils.z.const 8

scoreboard players set #120 ntils.z.const 120
scoreboard players set #180 ntils.z.const 180
scoreboard players set #360 ntils.z.const 360
scoreboard players set #36000 ntils.z.const 36000

scoreboard players set #100 ntils.z.const 100
scoreboard players set #1000 ntils.z.const 1000
scoreboard players set #10000 ntils.z.const 10000

# POWERS OF 2 #

scoreboard players set #2^6 ntils.z.const 64
scoreboard players set #2^8 ntils.z.const 256
scoreboard players set #2^12 ntils.z.const 4096
scoreboard players set #2^16 ntils.z.const 65536
scoreboard players set #2^18 ntils.z.const 262144
scoreboard players set #2^24 ntils.z.const 16777215

# TIME CONSTANTS #

scoreboard players set #TIME.MINUTE ntils.z.const 1200
scoreboard players set #TIME.DAY ntils.z.const 24000

# MISC CONSTANTS #

scoreboard players set #CLEANUP_CYCLE# ntils.z.const 6000

# FORCELOADS #

execute in ntils:z/empty run forceload add 0 0
execute in ntils:z/empty unless loaded 0 0 0 run schedule function ntils:z/void/schedule 1t
execute in ntils:z/empty if loaded 0 0 0 run function ntils:z/void/place_barrel

# LOOKUP TABLES #

function ntils:z/lookups/load

# POINTLESS STORAGE INIT #

data modify storage ntils:api math.bz.i.out set value [0d,0d,0d]
data modify storage ntils:z player.tick.macro set value {id:0}