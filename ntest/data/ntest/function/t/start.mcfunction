$data modify entity @s data.ntest.t.m set value {p:"$(At_Point)",j:"$(At_Junction)",steps:$(Steps)}
$scoreboard players set #math.bz.4.in.iterations ntils.API $(Steps)
function ntils:api/math/bz/4/i/s/start

scoreboard players operation #x1 ntest.temp = #math.bz.4.in.a.x ntils.API
scoreboard players operation #y1 ntest.temp = #math.bz.4.in.a.y ntils.API
scoreboard players operation #z1 ntest.temp = #math.bz.4.in.a.z ntils.API

scoreboard players operation #x1 ntest.temp -= #math.bz.4.in.d.x ntils.API
scoreboard players operation #y1 ntest.temp -= #math.bz.4.in.d.y ntils.API
scoreboard players operation #z1 ntest.temp -= #math.bz.4.in.d.z ntils.API

scoreboard players operation #x1 ntest.temp /= #100 ntest.const
scoreboard players operation #y1 ntest.temp /= #100 ntest.const
scoreboard players operation #z1 ntest.temp /= #100 ntest.const

scoreboard players operation #x1 ntest.temp *= #x1 ntest.temp
scoreboard players operation #y1 ntest.temp *= #y1 ntest.temp
scoreboard players operation #z1 ntest.temp *= #z1 ntest.temp

scoreboard players operation #x1 ntest.temp += #y1 ntest.temp
execute store result score #math.sqrt.in ntils.API run scoreboard players operation #x1 ntest.temp += #z1 ntest.temp

function ntils:api/math/sqrt

tellraw @a {"score": {"name": "#math.sqrt.out","objective": "ntils.API"}}

tag @s add ntest.t.tick
data modify entity @s Pos set from storage ntils:api math.bz.4.out