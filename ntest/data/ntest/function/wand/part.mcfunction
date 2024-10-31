execute unless loaded ~ ~ ~ run return run function ntest:wand/hit
execute unless block ~ ~ ~ #ntils:api/nocol run return run function ntest:wand/hit
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!#ntils:api/nohitbox,dx=0,dy=0,dz=0,predicate=!ntest:owner] positioned ~.5 ~.5 ~.5 run return run function ntest:wand/hit
particle portal ~ ~ ~ 0 0 0 3 2
scoreboard players add #dist ntest.temp 1
execute positioned ^ ^ ^.1 unless entity @s[distance=..0.075] run function ntest:wand/part