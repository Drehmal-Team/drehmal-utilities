execute unless score $ntils:ajsm.ENABLED ntils.API.singularity.flag matches 1.. run return fail

execute if entity @s[type=marker] run return run function ntils:z/ajsm/move/main with entity @s data.ntils.z.ajsm
execute on passengers run return run function ntils:z/ajsm/move/main with entity @s data.ntils.z.ajsm
return fail