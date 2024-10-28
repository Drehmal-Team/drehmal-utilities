$data modify storage ntils:z singularity.verify.macro set value {this:"$(id)",target:""}
execute if data storage ntils:z singularity.data[0].dependency[] run data modify storage ntils:z singularity.verify.macro.target set from storage ntils:z singularity.data[0].dependency[0].id
execute if data storage ntils:z singularity.data[0].dependency[] run function ntils:z/singularity/verify/for_each_dependency with storage ntils:z singularity.verify.macro

scoreboard players remove #loop ntils.z.singularity.temp 1
data remove storage ntils:z singularity.data[0]
execute if data storage ntils:z singularity.data[] run function ntils:z/singularity/verify/for_each_pack with storage ntils:z singularity.data[0]
