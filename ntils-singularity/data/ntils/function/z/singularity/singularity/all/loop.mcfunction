scoreboard players remove #loop ntils.z.singularity.temp 1
$execute in $(d) positioned 15000000 100 -25000000 run forceload add ~ ~
$execute in $(d) positioned 15000000 100 -25000000 if loaded ~ ~ ~ run function #ntils:z/singularity/place_in_all
$execute in $(d) positioned 15000000 100 -25000000 unless loaded ~ ~ ~ run data modify storage ntils:z singularity.dimensions prepend from storage ntils:z singularity.dimensions[-1]
data remove storage ntils:z singularity.dimensions[-1]
data modify storage ntils:z singularity.all.m.d set from storage ntils:z singularity.dimensions[-1]
execute if score #loop ntils.z.singularity.temp matches 1.. run function ntils:z/singularity/singularity/all/loop with storage ntils:z singularity.all.m
