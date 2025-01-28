data modify storage ntils:z color.in.gradient set from storage ntils:api color.in.gradient
scoreboard players set #t ntils.z.color.temp 3000
scoreboard players operation #t ntils.z.color.temp -= #color.in.gradient.time ntils.API
scoreboard players operation #t ntils.z.color.temp -= #color.in.gradient.time ntils.API
scoreboard players operation #t ntils.z.color.temp *= #color.in.gradient.time ntils.API
scoreboard players operation #t ntils.z.color.temp *= #color.in.gradient.time ntils.API
scoreboard players operation #t ntils.z.color.temp /= #1000000 ntils.z.const

function ntils:z/color/gradient/linear
data modify storage ntils:api color.out.gradient set from storage ntils:z color.out.gradient