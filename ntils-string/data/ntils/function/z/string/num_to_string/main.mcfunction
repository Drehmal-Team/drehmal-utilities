$data modify storage ntils:api string.num_to_string.out set value "$(in)"
data modify storage ntils:z string.num_to_string.temp set string storage ntils:api string.num_to_string.out 0 1
$execute if data storage ntils:z {string:{num_to_string:{temp:"."}}} run return run data modify storage ntils:api string.num_to_string.out set value "0$(in)"
data modify storage ntils:z string.num_to_string.temp set string storage ntils:api string.num_to_string.out 0 2
execute if data storage ntils:z {string:{num_to_string:{temp:"-."}}} run data modify storage ntils:z string.num_to_string.m.str set string storage ntils:api string.num_to_string.out 2
execute if data storage ntils:z {string:{num_to_string:{temp:"-."}}} run return run function ntils:z/string/num_to_string/spl with storage ntils:z string.num_to_string.m