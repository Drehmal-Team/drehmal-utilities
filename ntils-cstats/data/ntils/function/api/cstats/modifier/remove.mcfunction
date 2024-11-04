execute unless score $ntils:cstats.ENABLED ntils.API.singularity.flag matches 1.. run return fail
execute unless data storage ntils:api player.storage[{Open:True}] run return fail

$data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[].add_value[{uuid:"$(uuid)"}]
$data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[].add_multiplied_base[{uuid:"$(uuid)"}]
$data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[].add_multiplied_total[{uuid:"$(uuid)"}]