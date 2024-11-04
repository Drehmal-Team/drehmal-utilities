execute unless score $ntils:cstats.ENABLED ntils.API.singularity.flag matches 1.. run return fail
execute unless data storage ntils:api player.storage[{Open:True}] run return fail

$data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[{name:"$(name)"}].add_value[{uuid:"$(uuid)"}]
$data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[{name:"$(name)"}].add_multiplied_base[{uuid:"$(uuid)"}]
$data remove storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[{name:"$(name)"}].add_multiplied_total[{uuid:"$(uuid)"}]

$execute unless data storage player.storage[{Open:True}].data.ntils.z.cstats.modifiers[{name:"$(name)"}] run data modify storage player.storage[{Open:True}].data.ntils.z.cstats.modifiers append value {name:"$(name)",add_multiplied_base:[],add_value:[],add_multiplied_total:[]}
$data modify storage ntils:api player.storage[{Open:True}].data.ntils.z.cstats.modifiers[{name:"$(name)"}]."$(operation)" append value {value:$(value)d,uuid:$(uuid),source:"ntils.z.cstats.added_with_modifier_command"}