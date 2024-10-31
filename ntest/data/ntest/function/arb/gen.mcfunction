scoreboard players set #point_num ntest.global 0
scoreboard players set #math.bz.n.in.t ntils.API 10
function ntils:api/math/bz/n/point
data modify storage ntest:s arb.list set value []
data modify storage ntest:s arb.list append from storage ntils:api math.bz.n.out
function ntest:arb/loop
data remove storage ntils:api math.bz.n.in
data modify entity @s Pos set from storage ntils:api math.bz.n.in[0]
tag @s add ntest.arb.tick