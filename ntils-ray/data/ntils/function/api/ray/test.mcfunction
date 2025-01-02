execute unless score $ntils:ray.ENABLED ntils.API.singularity.flag matches 1.. run return fail

data modify storage ntils:api ray.out set value {}

kill @e[type=block_display,tag=ntils.z.ray.test.hit]
execute summon marker run return run function ntils:z/ray/int/as_marker