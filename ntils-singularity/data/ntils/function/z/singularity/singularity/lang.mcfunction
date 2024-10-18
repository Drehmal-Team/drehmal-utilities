data modify storage ntils:z lang.singularity.ntils set value '[{"color":"aqua","text":"Drehmal Utilities"}]'
data modify storage ntils:z lang.singularity.name set value '{"color":"yellow","text":"Singularity"}'

data modify storage ntils:z lang.singularity.process.line set value '[{"text":"-","color":"dark_gray"},{"text":"===","color":"gray"},{"text":"□□□□□","color":"white"},{"text":"========","color":"gray"},{"text":"-------------------------------","color":"dark_gray"}]'
data modify storage ntils:z lang.singularity.process.0 set value '[{"storage": "ntils:z","nbt": "lang.singularity.process.list.spacer","interpret": true},{"nbt": "lang.singularity.ntils","storage": "ntils:z","interpret": true},{"text":" Load Manager Output","color":"gray"}]'
data modify storage ntils:z lang.singularity.process.1 set value '[{"storage": "ntils:z","nbt": "lang.singularity.process.list.spacer","interpret": true},{"color":"gray","text": "The following packs are registered with the "},{"nbt": "singularity.data[{id:singularity}].display.name","storage": "ntils:z","interpret": false,"color":"yellow"},{"text":" module:","color":"gray"}]'

data modify storage ntils:z lang.singularity.process.nopacks set value '{"color":"red","text": "No packs loaded!"}'

data modify storage ntils:z lang.singularity.process.list.line0 set value '[{"text":"[","color":"dark_gray"},{"storage": "ntils:z","nbt": "singularity.outputlist[0].display.name","interpret": false,"color":"yellow"},{"text":"]","color":"dark_gray"},{"color":"gray","text":": "}]'
data modify storage ntils:z lang.singularity.process.list.spacer set value '{"color":"dark_gray","text":"  | "}'

data modify storage ntils:z lang.singularity.process.list.module.line.desc set value '[{"storage": "ntils:z","nbt": "lang.singularity.process.list.spacer","interpret": true},{"text":"Description: ","color":"gray"},{"storage": "ntils:z","nbt": "singularity.outputlist[0].display.desc","interpret": false,"color":"white"}]'
data modify storage ntils:z lang.singularity.process.list.module.line.module_success set value '[{"storage": "ntils:z","nbt": "lang.singularity.process.list.spacer","interpret": true},{"storage": "ntils:z","nbt": "lang.singularity.process.list.module.status","interpret": true},{"storage": "ntils:z","nbt": "lang.singularity.process.list.module.success","interpret": true}]'

data modify storage ntils:z lang.singularity.process.list.module.line.module_error set value '[{"storage": "ntils:z","nbt": "lang.singularity.process.list.spacer","interpret": true},{"storage": "ntils:z","nbt": "lang.singularity.process.list.module.status","interpret": true},{"storage": "ntils:z","nbt": "lang.singularity.process.list.module.failure","interpret": true},{"text":": ","color":"dark_gray"},{"storage": "ntils:z","nbt": "singularity.outputlist[0].error","interpret": false,"color":"red"}]'

data modify storage ntils:z lang.singularity.process.list.module.line.version set value '[{"storage": "ntils:z","nbt": "lang.singularity.process.list.spacer","interpret": true},{"text":"Version: ","color":"gray"},{"storage":"ntils:z","nbt":"singularity.outputlist[0].version","interpret":false,"color":"light_purple"}]'

data modify storage ntils:z lang.singularity.process.list.module.status set value '{"color":"gray","text":"Status: "}'
data modify storage ntils:z lang.singularity.process.list.module.success set value '{"color":"green","text":"[LOADED]"}'
data modify storage ntils:z lang.singularity.process.list.module.failure set value '{"color":"red","text":"[ERROR]"}'
data modify storage ntils:z lang.singularity.process.list.module.error set value '[{"text":"Specific Error: ","color":"gray"},{"storage": "ntils:z","nbt": "singularity.outputlist[0].error","interpret": false,"color":"red"}]'
