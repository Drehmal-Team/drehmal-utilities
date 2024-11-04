data modify storage ntils:z lang.singularity.ntils set value '[{"color":"aqua","text":"Drehmal Utilities"}]'
data modify storage ntils:z lang.singularity.name set value '{"color":"yellow","text":"Singularity"}'

data modify storage ntils:z lang.singularity.verify.error.general set value '[{"storage": "ntils:z","nbt": "lang.singularity.process.list.double_spacer","interpret": true},{"text":"\'","color":"red"},{"storage": "ntils:z","nbt": "singularity.outputlist[0].error[0].id","interpret": false,"color":"yellow"},{"text":"\': ","color":"red"}]'

# SPECIFIC ERROR CODE MESSAGES #
data modify storage ntils:z lang.singularity.verify.error.codes.missing_pack set value '{"text":"Dependency not installed.","color":"red"}'
data modify storage ntils:z lang.singularity.verify.error.codes.pack_not_loaded set value '{"text":"Dependency installed but was unable to load.","color":"red"}'
data modify storage ntils:z lang.singularity.verify.error.codes.version_too_low set value '{"text":"Dependency out of date (version too low).","color":"red"}'
data modify storage ntils:z lang.singularity.verify.error.codes.version_too_high set value '{"text":"Dependency out of date (version too high).","color":"red"}'

data modify storage ntils:z lang.singularity.process.list.module.line.module_error.0 set value '[{"storage": "ntils:z","nbt": "lang.singularity.process.list.spacer","interpret": true},{"storage": "ntils:z","nbt": "lang.singularity.process.list.module.status","interpret": true},{"storage": "ntils:z","nbt": "lang.singularity.process.list.module.failure","interpret": true}]'


data modify storage ntils:z lang.singularity.process.line set value '[{"text":"-","color":"dark_gray"},{"text":"===","color":"gray"},{"text":"□□□□□","color":"white"},{"text":"========","color":"gray"},{"text":"-------------------------------","color":"dark_gray"}]'
data modify storage ntils:z lang.singularity.process.0 set value '[{"storage": "ntils:z","nbt": "lang.singularity.process.list.spacer","interpret": true},{"nbt": "lang.singularity.ntils","storage": "ntils:z","interpret": true},{"text":" Load Manager Output","color":"gray"}]'
data modify storage ntils:z lang.singularity.process.1 set value '[{"storage": "ntils:z","nbt": "lang.singularity.process.list.spacer","interpret": true},{"color":"gray","text": "The following datapacks are being managed by "},{"nbt": "singularity.data[{id:\'ntils:singularity\'}].display.name","storage": "ntils:api","interpret": false,"color":"yellow"},{"text":".","color":"gray"}]'

data modify storage ntils:z lang.singularity.process.nopacks set value '{"color":"red","text": "No packs loaded!"}'

data modify storage ntils:z lang.singularity.process.list.line0 set value '[{"text":"[","color":"dark_gray"},{"storage": "ntils:z","nbt": "singularity.outputlist[0].display.name","interpret": false,"color":"yellow"},{"text":"]","color":"dark_gray"},{"color":"gray","text":": "}]'
data modify storage ntils:z lang.singularity.process.list.spacer set value '{"color":"dark_gray","text":"  | "}'
data modify storage ntils:z lang.singularity.process.list.double_spacer set value '[{"storage": "ntils:z","nbt": "lang.singularity.process.list.spacer","interpret": true},{"color":"dark_gray","text":" > "}]'

data modify storage ntils:z lang.singularity.process.list.module.line.desc set value '[{"storage": "ntils:z","nbt": "lang.singularity.process.list.spacer","interpret": true},{"text":"Description: ","color":"gray"},{"storage": "ntils:z","nbt": "singularity.outputlist[0].display.desc","interpret": false,"color":"white"}]'
data modify storage ntils:z lang.singularity.process.list.module.line.module_success set value '[{"storage": "ntils:z","nbt": "lang.singularity.process.list.spacer","interpret": true},{"storage": "ntils:z","nbt": "lang.singularity.process.list.module.status","interpret": true},{"storage": "ntils:z","nbt": "lang.singularity.process.list.module.success","interpret": true}]'


data modify storage ntils:z lang.singularity.process.list.module.line.version set value '[{"storage": "ntils:z","nbt": "lang.singularity.process.list.spacer","interpret": true},{"text":"Version: ","color":"gray"},{"storage":"ntils:z","nbt":"singularity.outputlist[0].version","interpret":false,"color":"light_purple"}]'

data modify storage ntils:z lang.singularity.process.list.module.status set value '{"color":"gray","text":"Status: "}'
data modify storage ntils:z lang.singularity.process.list.module.success set value '{"color":"green","text":"[LOADED]"}'
data modify storage ntils:z lang.singularity.process.list.module.failure set value '{"color":"red","text":"[ERROR]"}'
data modify storage ntils:z lang.singularity.process.list.module.error set value '[{"text":"Specific Error: ","color":"gray"},{"storage": "ntils:z","nbt": "singularity.outputlist[0].error","interpret": false,"color":"red"}]'
