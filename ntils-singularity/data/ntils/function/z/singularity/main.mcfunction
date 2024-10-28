scoreboard objectives add ntils.API.singularity.flag dummy
scoreboard players reset * ntils.API.singularity.flag

data remove storage ntils:z lang
function #ntils:api/singularity/lang

data modify storage ntils:api singularity.data set value [\
    {\
        id:"singularity",\
        version:1,\
        display:{desc:"Load manager module.",name:"Singularity"},\
        dependency:[]\
    }\
]

function #ntils:api/singularity/data

data modify storage ntils:api singularity.data[].enabled set value True

function ntils:z/singularity/verify

data modify storage ntils:z singularity.data set from storage ntils:api singularity.data

function ntils:z/singularity/process/output

data modify storage ntils:z singularity.data set from storage ntils:api singularity.data

execute if data storage ntils:z singularity.data[] run function ntils:z/singularity/set_enabled_loop with storage ntils:z singularity.data[-1]


function ntils:z/singularity/singularity/init