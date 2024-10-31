function ntils:api/math/bz/4/i/s/loop
data modify entity @s Pos set from storage ntils:api math.bz.4.out
#execute at @s run particle end_rod
execute facing entity @s feet run function ntest:b/part
scoreboard players remove #loop ntest.temp 1
execute if score #loop ntest.temp matches ..0 run return run kill @s
execute at @s run function ntest:b/loop