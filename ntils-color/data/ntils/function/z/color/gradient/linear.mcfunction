execute store result score #r1 ntils.z.color.temp run data get storage ntils:z color.in.gradient.start[0] -256
execute store result score #g1 ntils.z.color.temp run data get storage ntils:z color.in.gradient.start[1] -256
execute store result score #b1 ntils.z.color.temp run data get storage ntils:z color.in.gradient.start[2] -256
execute store result score #r2 ntils.z.color.temp run data get storage ntils:z color.in.gradient.end[0] 256
execute store result score #g2 ntils.z.color.temp run data get storage ntils:z color.in.gradient.end[1] 256
execute store result score #b2 ntils.z.color.temp run data get storage ntils:z color.in.gradient.end[2] 265
scoreboard players operation #r2 ntils.z.color.temp *= #t ntils.z.color.temp
scoreboard players operation #g2 ntils.z.color.temp *= #t ntils.z.color.temp
scoreboard players operation #b2 ntils.z.color.temp *= #t ntils.z.color.temp
scoreboard players remove #t ntils.z.color.temp 1000
scoreboard players operation #r1 ntils.z.color.temp *= #t ntils.z.color.temp
scoreboard players operation #g1 ntils.z.color.temp *= #t ntils.z.color.temp
scoreboard players operation #b1 ntils.z.color.temp *= #t ntils.z.color.temp
execute store result storage ntils:z color.out.gradient[0] int 0.00000390625 run scoreboard players operation #r1 ntils.z.color.temp += #r2 ntils.z.color.temp
execute store result storage ntils:z color.out.gradient[1] int 0.00000390625 run scoreboard players operation #g1 ntils.z.color.temp += #g2 ntils.z.color.temp
execute store result storage ntils:z color.out.gradient[2] int 0.00000390625 run scoreboard players operation #b1 ntils.z.color.temp += #b2 ntils.z.color.temp