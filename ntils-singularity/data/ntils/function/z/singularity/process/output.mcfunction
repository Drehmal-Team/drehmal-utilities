data modify storage ntils:z singularity.outputlist set from storage ntils:z singularity.data
function ntils:z/singularity/process/clearchat
tellraw @a[tag=ntils.z.dev] [{"nbt": "lang.singularity.process.line","storage": "ntils:z","interpret": true},"\n",{"nbt": "lang.singularity.process.0","storage": "ntils:z","interpret": true},"\n",{"nbt": "lang.singularity.process.1","storage": "ntils:z","interpret": true},"\n"]
execute unless data storage ntils:z singularity.data[] run return run tellraw @a[tag=ntils.z.dev] [{"nbt": "lang.singularity.process.nopacks","storage": "ntils:z","interpret": true},"\n"]
execute if data storage ntils:z singularity.outputlist[] run function ntils:z/singularity/process/list