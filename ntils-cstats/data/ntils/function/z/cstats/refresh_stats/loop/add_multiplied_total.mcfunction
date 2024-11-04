execute store result score #add_multiplied_total ntils.z.cstats.temp run data get storage ntils:z cstats.refresh_stats.temp[-1].add_multiplied_total[-1].value 1000
scoreboard players add #add_multiplied_total ntils.z.cstats.temp 1000
scoreboard players operation #this ntils.z.cstats.temp *= #add_multiplied_total ntils.z.cstats.temp
scoreboard players operation #this ntils.z.cstats.temp /= #1000 ntils.z.const

data remove storage ntils:z cstats.refresh_stats.temp[-1].add_multiplied_total[-1]
execute if data storage ntils:z cstats.refresh_stats.temp[-1].add_multiplied_total[] run function ntils:z/cstats/refresh_stats/loop/add_multiplied_total
