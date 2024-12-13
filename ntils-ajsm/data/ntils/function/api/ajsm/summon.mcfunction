execute unless score $ntils:ajsm.ENABLED ntils.API.singularity.flag matches 1.. run return fail

data modify storage ntils:z ajsm.summon.data set value {tracker:"",rig:"",state:""}
execute as @e[tag=ntils.API.ajsm.summon] at @s run function ntils:z/ajsm/summon/main