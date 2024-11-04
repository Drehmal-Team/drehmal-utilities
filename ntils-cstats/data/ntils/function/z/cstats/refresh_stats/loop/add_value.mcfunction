execute store result score #add_value ntils.z.cstats.temp run data get storage ntils:z cstats.refresh_stats.temp[-1].add_value[-1].value 1000
scoreboard players operation #this ntils.z.cstats.temp += #add_value ntils.z.cstats.temp
data remove storage ntils:z cstats.refresh_stats.temp[-1].add_value[-1]
execute if data storage ntils:z cstats.refresh_stats.temp[-1].add_value[] run function ntils:z/cstats/refresh_stats/loop/add_value
