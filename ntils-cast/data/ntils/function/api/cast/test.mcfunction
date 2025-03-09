# cast/GET/HITBOX/BLOCK

execute unless score $ntils:cast.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail

data modify storage ntils:api cast.out set value {}

kill @e[type=block_display,tag=ntils.z.cast.test.hit]
execute summon marker run return run function ntils:z/cast/int/as_marker