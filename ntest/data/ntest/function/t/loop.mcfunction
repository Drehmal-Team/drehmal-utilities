function ntils:api/math/bz/4/i/s/loop
data modify entity @s Pos set from storage ntils:api math.bz.4.out
$$(j)
$execute facing entity @s feet run function ntest:t/p {p:"$(p)",j:"$(j)"}
scoreboard players remove #loop ntest.temp 1
$execute if score #loop ntest.temp matches 1.. at @s run function ntest:t/loop {p:"$(p)",j:"$(j)"}

