execute store result score #l ntils.z.math.bz.n.temp if data storage ntils:api math.bz.n.in[]
scoreboard players remove #l ntils.z.math.bz.n.temp 1
scoreboard players set #n ntils.z.math.bz.n.temp -1
data modify storage ntils:z math.bz.n.poly.out set value []

execute if score #n ntils.z.math.bz.n.temp < #l ntils.z.math.bz.n.temp run function ntils:z/math/bz/n/poly/start/outer_sum

execute store result score #math.bz.n.out.x ntils.API run data get storage ntils:z math.bz.n.poly.out[0][0] 1000
execute store result score #math.bz.n.out.y ntils.API run data get storage ntils:z math.bz.n.poly.out[0][1] 1000
execute store result score #math.bz.n.out.z ntils.API run data get storage ntils:z math.bz.n.poly.out[0][2] 1000