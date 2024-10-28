tellraw @a[tag=ntils.z.dev] [{"storage": "ntils:z","nbt": "lang.singularity.verify.error.general","interpret": true},{"storage": "ntils:z","nbt": "singularity.outputlist[0].error[0].json","interpret": true}]
data remove storage ntils:z singularity.outputlist[0].error[0]
execute if data storage ntils:z singularity.outputlist[0].error[] run function ntils:z/singularity/process/list_errors