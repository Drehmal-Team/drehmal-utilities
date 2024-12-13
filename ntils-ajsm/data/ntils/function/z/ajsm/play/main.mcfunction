data modify storage ntils:z ajsm.play.data set from entity @s data.ntils.z.ajsm

data modify storage ntils:z ajsm.play.m set value {}
data modify storage ntils:z ajsm.play.m.n set from storage ntils:z ajsm.play.temp.d.o
data modify storage ntils:z ajsm.play.m.rig set from storage ntils:z ajsm.play.data.rig
$data modify storage ntils:z ajsm.play.m.o set from storage ntils:z ajsm.play.data.channels.$(c)[-1].d.o
data modify storage ntils:z ajsm.play.m.nm set from storage ntils:z ajsm.play.data.namespace

execute if data storage ntils:z ajsm.play.m.o run function ntils:z/ajsm/play/play_pause with storage ntils:z ajsm.play.m
execute unless data storage ntils:z ajsm.play.m.o run function ntils:z/ajsm/play/play with storage ntils:z ajsm.play.m

$execute if data storage ntils:z ajsm.play.data.channels.$(c)[-1].d{p:False} run data remove storage ntils:z ajsm.play.data.channels.$(c)[-1]
$execute if data storage ntils:z ajsm.play.data.channels.$(c)[-1].d{p:True,c:True} store result storage ntils:z ajsm.play.data.channels.$(c)[-1].d.t0 run scoreboard players get @s ntils.z.ajsm.clear.$(c)

$data modify storage ntils:z ajsm.play.data.channels.$(c) append from storage ntils:z ajsm.play.temp
$scoreboard players reset @s ntils.z.ajsm.clear.$(c)
$execute if data storage ntils:z ajsm.play.temp.d{c:True} store result score @s ntils.z.ajsm.clear.$(c) run data get storage ntils:z ajsm.play.temp.d.t1