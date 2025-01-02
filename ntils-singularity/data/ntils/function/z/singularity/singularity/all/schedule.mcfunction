execute store result score #loop ntils.z.singularity.temp if data storage ntils:z singularity.dimensions[]
data modify storage ntils:z singularity.all.m.d set from storage ntils:z singularity.dimensions[-1]
execute if score #loop ntils.z.singularity.temp matches 1.. run function ntils:z/singularity/singularity/all/loop with storage ntils:z singularity.all.m

execute if data storage ntils:z singularity.dimensions[] run schedule function ntils:z/singularity/singularity/all/schedule 1t