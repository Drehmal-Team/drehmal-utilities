scoreboard players remove #loop ntest.temp 1
function ntils:api/math/bz/4/i/s/loop
data modify entity @s Pos set from storage ntils:api math.bz.4.out
execute facing entity @s feet run function ntest:b/part
execute if score #loop ntest.temp matches ..0 run return run kill @s
execute at @s run function ntest:b/p/loop