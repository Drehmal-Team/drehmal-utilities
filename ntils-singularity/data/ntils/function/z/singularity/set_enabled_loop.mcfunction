execute store result score #t ntils.z.singularity.temp run data get storage ntils:z singularity.data[-1].enabled
$execute if score #t ntils.z.singularity.temp matches 1 run scoreboard players set $$(id).ENABLED ntils.API.flag 1
$execute unless score #t ntils.z.singularity.temp matches 1 run scoreboard players reset $$(id).ENABLED ntils.API.flag
data remove storage ntils:z singularity.data[-1]
execute if data storage ntils:z singularity.data[] run function ntils:z/singularity/set_enabled_loop with storage ntils:z singularity.data[-1]