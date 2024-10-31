scoreboard players remove #loop ntest.temp 1
execute if score #loop ntest.temp matches ..0 run return run function ntest:wand/found
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=!ntest.temp_owner,type=!#ntils:api/nohitbox,dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 run return run function ntest:wand/found
execute unless block ~ ~ ~ #ntils:api/nocol run return run function ntest:wand/found
scoreboard players add #math.bz.4.in.iterations ntils.API 1
execute positioned ^ ^ ^1 run function ntest:wand/find_target