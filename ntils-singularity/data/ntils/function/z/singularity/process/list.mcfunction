tellraw @a[tag=ntils.z.dev] {"storage": "ntils:z","nbt": "lang.singularity.process.list.line0","interpret": true}
execute if data storage ntils:z singularity.outputlist[0].display.desc run tellraw @a[tag=ntils.z.dev] [{"storage": "ntils:z","nbt": "lang.singularity.process.list.module.line.desc","interpret": true}]

execute unless data storage ntils:z singularity.outputlist[0].error[] run tellraw @a[tag=ntils.z.dev] [{"storage": "ntils:z","nbt": "lang.singularity.process.list.module.line.module_success","interpret": true}]

execute if data storage ntils:z singularity.outputlist[0].error[] run tellraw @a[tag=ntils.z.dev] [{"storage": "ntils:z","nbt": "lang.singularity.process.list.module.line.module_error.0","interpret": true}]
execute if data storage ntils:z singularity.outputlist[0].error[] run function ntils:z/singularity/process/list_errors

execute if data storage ntils:z singularity.outputlist[0].version run tellraw @a[tag=ntils.z.dev] [{"storage": "ntils:z","nbt": "lang.singularity.process.list.module.line.version","interpret": true}]

tellraw @a[tag=ntils.z.dev] ""
data remove storage ntils:z singularity.outputlist[0]
execute if data storage ntils:z singularity.outputlist[] run function ntils:z/singularity/process/list