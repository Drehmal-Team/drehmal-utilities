scoreboard players set #this ntils.z.cstats.temp 0

execute if data storage ntils:z cstats.refresh_stats.temp[-1].add_value[] run function ntils:z/cstats/refresh_stats/loop/add_value

scoreboard players set #add_multiplied_base ntils.z.cstats.temp 1000
execute if data storage ntils:z cstats.refresh_stats.temp[-1].add_multiplied_base[] run function ntils:z/cstats/refresh_stats/loop/add_multiplied_base
scoreboard players operation #this ntils.z.cstats.temp *= #add_multiplied_base ntils.z.cstats.temp
scoreboard players operation #this ntils.z.cstats.temp /= #1000 ntils.z.const

execute if data storage ntils:z cstats.refresh_stats.temp[-1].add_multiplied_total[] run function ntils:z/cstats/refresh_stats/loop/add_multiplied_total

$execute store result storage ntils:z cstats.refresh_stats.out."$(name)" double 0.001 run scoreboard players get #this ntils.z.cstats.temp


data remove storage ntils:z cstats.refresh_stats.temp[-1]
execute if data storage ntils:z cstats.refresh_stats.temp[] run function ntils:z/cstats/refresh_stats/loop with storage ntils:z cstats.refresh_stats.temp[-1]