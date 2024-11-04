execute store result score #add ntils.z.cstats.temp run data get storage ntils:z cstats.refresh_stats.temp[-1].add_multiplied_base[-1].value 1000
scoreboard players operation #add_multiplied_base ntils.z.cstats.temp += #add ntils.z.cstats.temp
data remove storage ntils:z cstats.refresh_stats.temp[-1].add_multiplied_base[-1]
execute if data storage ntils:z cstats.refresh_stats.temp[-1].add_multiplied_base[] run function ntils:z/cstats/refresh_stats/loop/add_multiplied_base
