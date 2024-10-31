# ntils.API.singularity.flag is used as a load status tracker for 
# each pack that passes load data to singularity, a fake player
# score in the format '$<id>.ENABLED ntils.API.singularity.flag` is
# created and set to 0 or 1, depending on the load status of the pack
scoreboard objectives add ntils.API.singularity.flag dummy
scoreboard players reset * ntils.API.singularity.flag

data remove storage ntils:z lang
function #ntils:api/singularity/lang

data modify storage ntils:api singularity.data set value []
function #ntils:api/singularity/data

data modify storage ntils:api singularity.data[].enabled set value True
function ntils:z/singularity/verify

data modify storage ntils:z singularity.data set from storage ntils:api singularity.data
function ntils:z/singularity/process/output

data modify storage ntils:z singularity.data set from storage ntils:api singularity.data
execute if data storage ntils:z singularity.data[] run function ntils:z/singularity/set_enabled_loop with storage ntils:z singularity.data[-1]


function ntils:z/singularity/singularity/load