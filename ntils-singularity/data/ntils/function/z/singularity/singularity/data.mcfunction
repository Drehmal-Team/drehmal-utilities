data modify storage ntils:api singularity.data append value {\
    id:"ntils:singularity",\
    version:1,\
    display:{desc:"Load manager module.",name:"Singularity"},\
    dependency:[]\
}
data modify storage ntils:api singularity.dimensions append value "minecraft:overworld"
data modify storage ntils:api singularity.dimensions append value "minecraft:the_nether"
data modify storage ntils:api singularity.dimensions append value "minecraft:the_end"
data modify storage ntils:api singularity.dimensions append value "ntils:z/empty"