scoreboard players remove @s ntils.z.ajsm.clear.0 1
execute unless score @s ntils.z.ajsm.clear.0 matches ..0 run return 1

data modify storage ntils:z ajsm.int.m set value {}
data modify storage ntils:z ajsm.int.m.nm set from storage ntils:z ajsm.int.data.namespace
data modify storage ntils:z ajsm.int.m.rig set from storage ntils:z ajsm.int.data.rig
data modify storage ntils:z ajsm.int.m.n set from storage ntils:z ajsm.int.data.channels.0[-2].d.o
data modify storage ntils:z ajsm.int.m.o set from storage ntils:z ajsm.int.data.channels.0[-1].d.o

execute if data storage ntils:z ajsm.int.m.n run function ntils:z/ajsm/int/clear/pause_play with storage ntils:z ajsm.int.m
execute unless data storage ntils:z ajsm.int.m.n run function ntils:z/ajsm/int/clear/pause with storage ntils:z ajsm.int.m

data remove storage ntils:z ajsm.int.data.channels.0[-1]
execute if data storage ntils:z ajsm.int.data.channels.0[-1].d{c:False} run return run scoreboard players reset @s ntils.z.ajsm.clear.0
execute store result score @s ntils.z.ajsm.clear.0 run data get storage ntils:z ajsm.int.data.channels.0[-1].d.t1
execute store result score #t ntils.z.ajsm.temp run data get storage ntils:z ajsm.int.data.channels.0[-1].d.t0
scoreboard players operation @s ntils.z.ajsm.clear.0 -= #t ntils.z.ajsm.temp