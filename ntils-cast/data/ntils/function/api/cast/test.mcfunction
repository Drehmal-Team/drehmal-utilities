# cast/GET/HITBOX/BLOCK

execute unless score $ntils:cast.ENABLED ntils.API.singularity.flag matches 1.. run return fail

data modify storage ntils:api cast.out set value {}

kill @e[type=block_display,tag=ntils.z.cast.test.hit]
execute summon marker run return run function ntils:z/cast/int/as_marker