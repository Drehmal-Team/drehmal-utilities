execute store result score #r.k ntils.z.color.temp store result score #g.k ntils.z.color.temp store result score #b.k ntils.z.color.temp run data get storage ntils:z color.in.hsl[0] 48
execute store result score #r.9-k ntils.z.color.temp store result score #g.9-k ntils.z.color.temp run scoreboard players set #b.9-k ntils.z.color.temp 9216
scoreboard players add #g.k ntils.z.color.temp 8192
scoreboard players operation #g.k ntils.z.color.temp %= #2^10*12 ntils.z.const
scoreboard players add #b.k ntils.z.color.temp 4096
scoreboard players operation #b.k ntils.z.color.temp %= #2^10*12 ntils.z.const

scoreboard players operation #r.9-k ntils.z.color.temp -= #r.k ntils.z.color.temp
scoreboard players operation #g.9-k ntils.z.color.temp -= #g.k ntils.z.color.temp
scoreboard players operation #b.9-k ntils.z.color.temp -= #b.k ntils.z.color.temp

scoreboard players operation #r.9-k ntils.z.color.temp < #2^10 ntils.z.const
scoreboard players operation #g.9-k ntils.z.color.temp < #2^10 ntils.z.const
scoreboard players operation #b.9-k ntils.z.color.temp < #2^10 ntils.z.const

scoreboard players remove #r.k ntils.z.color.temp 3072
scoreboard players remove #g.k ntils.z.color.temp 3072
scoreboard players remove #b.k ntils.z.color.temp 3072

scoreboard players operation #r.9-k ntils.z.color.temp < #r.k ntils.z.color.temp
scoreboard players operation #g.9-k ntils.z.color.temp < #g.k ntils.z.color.temp
scoreboard players operation #b.9-k ntils.z.color.temp < #b.k ntils.z.color.temp

scoreboard players operation #r.9-k ntils.z.color.temp > #-2^10 ntils.z.const
scoreboard players operation #g.9-k ntils.z.color.temp > #-2^10 ntils.z.const
scoreboard players operation #b.9-k ntils.z.color.temp > #-2^10 ntils.z.const

execute store result score #s ntils.z.color.temp run data get storage ntils:z color.in.hsl[1] 4
execute store result score #r ntils.z.color.temp store result score #g ntils.z.color.temp store result score #b ntils.z.color.temp run data get storage ntils:z color.in.hsl[2] 8388608
execute store result score #a ntils.z.color.temp run data get storage ntils:z color.in.hsl[2] 8
execute if score #a ntils.z.color.temp matches 1024.. run scoreboard players remove #a ntils.z.color.temp 2048
execute if score #a ntils.z.color.temp matches ..-1 run scoreboard players operation #a ntils.z.color.temp *= #-1 ntils.z.const
scoreboard players operation #a ntils.z.color.temp *= #s ntils.z.color.temp

scoreboard players operation #r.9-k ntils.z.color.temp *= #a ntils.z.color.temp
scoreboard players operation #g.9-k ntils.z.color.temp *= #a ntils.z.color.temp
scoreboard players operation #b.9-k ntils.z.color.temp *= #a ntils.z.color.temp

execute store result storage ntils:z color.out.rgb[0] int 0.000000119209289551 run scoreboard players operation #r ntils.z.color.temp -= #r.9-k ntils.z.color.temp
execute store result storage ntils:z color.out.rgb[1] int 0.000000119209289551 run scoreboard players operation #g ntils.z.color.temp -= #g.9-k ntils.z.color.temp
execute store result storage ntils:z color.out.rgb[2] int 0.000000119209289551 run scoreboard players operation #b ntils.z.color.temp -= #b.9-k ntils.z.color.temp