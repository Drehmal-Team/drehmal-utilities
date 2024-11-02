data modify storage ntils:z time.load.m.hour set string block 1 2 0 LastOutput 10 12
data modify storage ntils:z time.load.m.min set string block 1 2 0 LastOutput 13 15
data modify storage ntils:z time.load.m.sec set string block 1 2 0 LastOutput 16 18
function ntils:z/time/force_time_sync/get_minhour_m with storage ntils:z time.load.m

scoreboard players set #tick_offset ntils.z.time.temp 100
scoreboard players operation #tick_offset ntils.z.time.temp -= #time.RUNNING_TIMER# ntils.z.global
execute store result storage ntils:z time.force_time_sync.m.second int 1 run scoreboard players operation #tick_offset ntils.z.time.temp /= #5 ntils.z.const

execute unless score $ntils:wborder.ENABLED ntils.API.singularity.flag matches 1.. run function ntils:z/time/force_time_sync/sch/start with storage ntils:z time.force_time_sync.m

scoreboard players operation #time.RUNNING_TIMER# ntils.z.global = #tick_offset ntils.z.time.temp

scoreboard players reset * ntils.z.time.total_world_time

scoreboard players reset #time.FORCING_SYNC# ntils.z.global

scoreboard players operation #prev ntils.z.time.temp = #time.get.realtime.in.24HOUR ntils.API
scoreboard players set #time.get.realtime.in.24HOUR ntils.API 1
function ntils:api/time/get/realtime
scoreboard players operation #time.get.realtime.in.24HOUR ntils.API = #prev ntils.z.time.temp

scoreboard players operation #time.get.realtime.out.hour ntils.API -= #2 ntils.z.time.temp

scoreboard players set #mod ntils.z.time.temp 24

execute if score #time.get.realtime.out.hour ntils.API matches ..-12 store result score #time.get.realtime.out.hour ntils.API run scoreboard players operation #mod ntils.z.time.temp += #time.get.realtime.out.hour ntils.API

execute if score #time.get.realtime.out.hour ntils.API matches 13.. store result score #time.get.realtime.out.hour ntils.API run scoreboard players operation #mod ntils.z.time.temp -= #time.get.realtime.out.hour ntils.API

scoreboard players operation #time.get.realtime.out.hour ntils.API *= #3600 ntils.z.const
scoreboard players operation #CURRENT_UNIX_TIME# ntils.z.global -= #time.get.realtime.out.hour ntils.API

function ntils:api/time/get/realtime
