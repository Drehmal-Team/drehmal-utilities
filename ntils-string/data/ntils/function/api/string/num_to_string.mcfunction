data modify storage ntils:z string.num_to_string.m set value {s:'',d:'.',high:0,low:''}
data modify storage ntils:z string.num_to_string.in set from storage ntils:api string.num_to_string.in

execute store result score #v ntils.z.string.temp run data get storage ntils:z string.num_to_string.in 100
execute if score #v ntils.z.string.temp matches ..-1 run data modify storage ntils:z string.num_to_string.m.s set value '-'
execute if score #v ntils.z.string.temp matches ..-1 store result storage ntils:z string.num_to_string.in double -0.01 run data get storage ntils:z string.num_to_string.in 100

execute store result storage ntils:z string.num_to_string.m.high int 1 run data get storage ntils:z string.num_to_string.in 1
execute store result score #low ntils.z.string.temp run data get storage ntils:z string.num_to_string.in 10
execute store result storage ntils:z string.num_to_string.m.low int 1 run scoreboard players operation #low ntils.z.string.temp %= #10 ntils.z.const

execute if score #low ntils.z.string.temp matches 0 run data modify storage ntils:z string.num_to_string.m.d set value ''
execute if score #low ntils.z.string.temp matches 0 run data modify storage ntils:z string.num_to_string.m.low set value ''

function ntils:z/string/num_to_string/main with storage ntils:z string.num_to_string.m
