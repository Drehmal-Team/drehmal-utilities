$execute store result score $$(id).ENABLED ntils.API.singularity.flag run data get storage ntils:z singularity.data[-1].enabled
data remove storage ntils:z singularity.data[-1]
execute if data storage ntils:z singularity.data[] run function ntils:z/singularity/set_enabled_loop with storage ntils:z singularity.data[-1]