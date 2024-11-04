$execute unless data storage ntils:z cstats.edit_modifiers.out[{name:"$(name)"}] run data modify storage ntils:z cstats.edit_modifiers.out append value {name:"$(name)",add_multiplied_base:[],add_value:[],add_multiplied_total:[]}
$data modify storage ntils:z cstats.edit_modifiers.out[{name:"$(name)"}]."$(operation)" append value {value:$(value)d,source:"$(source)",uuid:"$(uuid)"}
data remove storage ntils:z cstats.edit_modifiers.temp[-1]
execute if data storage ntils:z cstats.edit_modifiers.temp run function ntils:z/cstats/edit_modifiers/loop with storage ntils:z cstats.edit_modifiers.temp[-1]
