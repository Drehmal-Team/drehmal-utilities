scoreboard players operation #s.x ntils.z.math.bz.n.temp *= #math.bz.n.in.t ntils.API
scoreboard players operation #s.x ntils.z.math.bz.n.temp /= #1000 ntils.z.const
execute store result score #a ntils.z.math.bz.n.temp run data get storage ntils:z math.bz.n.poly.f.t[-1][0] 1000
scoreboard players operation #s.x ntils.z.math.bz.n.temp += #a ntils.z.math.bz.n.temp

scoreboard players operation #s.y ntils.z.math.bz.n.temp *= #math.bz.n.in.t ntils.API
scoreboard players operation #s.y ntils.z.math.bz.n.temp /= #1000 ntils.z.const
execute store result score #a ntils.z.math.bz.n.temp run data get storage ntils:z math.bz.n.poly.f.t[-1][1] 1000
scoreboard players operation #s.y ntils.z.math.bz.n.temp += #a ntils.z.math.bz.n.temp

scoreboard players operation #s.z ntils.z.math.bz.n.temp *= #math.bz.n.in.t ntils.API
scoreboard players operation #s.z ntils.z.math.bz.n.temp /= #1000 ntils.z.const
execute store result score #a ntils.z.math.bz.n.temp run data get storage ntils:z math.bz.n.poly.f.t[-1][2] 1000
scoreboard players operation #s.z ntils.z.math.bz.n.temp += #a ntils.z.math.bz.n.temp
data remove storage ntils:z math.bz.n.poly.f.t[-1]
execute if data storage ntils:z math.bz.n.poly.f.t[] run function ntils:z/math/bz/n/poly/fetch/loop
