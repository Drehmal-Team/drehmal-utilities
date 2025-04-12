execute store result score #math.choose.in.y ntils.API run scoreboard players add #m ntils.z.math.bz.n.temp 1
function ntils:api/math/choose

execute store result score #a ntils.z.math.bz.n.temp run data get storage ntils:z math.bz.n.poly.inner[0][0] 1000
scoreboard players operation #a ntils.z.math.bz.n.temp *= #-1^(n-m) ntils.z.math.bz.n.temp
scoreboard players operation #a ntils.z.math.bz.n.temp *= #math.choose.out ntils.API
scoreboard players operation #s.x ntils.z.math.bz.n.temp += #a ntils.z.math.bz.n.temp

execute store result score #a ntils.z.math.bz.n.temp run data get storage ntils:z math.bz.n.poly.inner[0][1] 1000
scoreboard players operation #a ntils.z.math.bz.n.temp *= #-1^(n-m) ntils.z.math.bz.n.temp
scoreboard players operation #a ntils.z.math.bz.n.temp *= #math.choose.out ntils.API
scoreboard players operation #s.y ntils.z.math.bz.n.temp += #a ntils.z.math.bz.n.temp

execute store result score #a ntils.z.math.bz.n.temp run data get storage ntils:z math.bz.n.poly.inner[0][2] 1000
scoreboard players operation #a ntils.z.math.bz.n.temp *= #-1^(n-m) ntils.z.math.bz.n.temp
scoreboard players operation #a ntils.z.math.bz.n.temp *= #math.choose.out ntils.API
scoreboard players operation #s.z ntils.z.math.bz.n.temp += #a ntils.z.math.bz.n.temp

data remove storage ntils:z math.bz.n.poly.inner[0]

scoreboard players operation #-1^(n-m) ntils.z.math.bz.n.temp *= #-1 ntils.z.const
execute if score #m ntils.z.math.bz.n.temp < #n ntils.z.math.bz.n.temp run function ntils:z/math/bz/n/poly/start/inner_sum