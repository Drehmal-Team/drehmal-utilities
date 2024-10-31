scoreboard players set #error ntils.z.singularity.temp 0

data modify storage ntils:z singularity.data set from storage ntils:api singularity.data

execute if data storage ntils:z singularity.data[] run function ntils:z/singularity/verify/for_each_pack with storage ntils:z singularity.data[0]

execute if score #error ntils.z.singularity.temp matches 1 run function ntils:z/singularity/verify