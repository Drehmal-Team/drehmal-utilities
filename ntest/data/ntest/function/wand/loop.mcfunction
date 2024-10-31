scoreboard players remove #loop ntest.temp 1
function ntils:api/math/bz/4/i/s/loop
data modify entity @s Pos set from storage ntils:api math.bz.4.out
scoreboard players set #dist ntest.temp 1
#execute at @s run particle end_rod
execute facing entity @s feet run function ntest:wand/part
execute if score #loop ntest.temp matches 0.. if score #dist ntest.temp matches 1.. facing entity @s feet summon block_display run function ntest:wand/summon
execute if score #loop ntest.temp matches 1.. at @s run function ntest:wand/loop