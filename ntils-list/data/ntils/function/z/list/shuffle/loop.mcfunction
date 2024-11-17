$data modify storage ntils:api list.shuffle.out append from storage ntils:z list.shuffle.temp[$(i)]
$data remove storage ntils:z list.shuffle.temp[$(i)]
scoreboard players remove #loop ntils.z.list.temp 1
execute store result score #rand ntils.z.list.temp run random value 0..2147483646
execute store result storage ntils:z list.shuffle.m.i int 1 run scoreboard players operation #rand ntils.z.list.temp %= #loop ntils.z.list.temp
execute if score #loop ntils.z.list.temp matches 1.. run return run function ntils:z/list/shuffle/loop with storage ntils:z list.shuffle.m