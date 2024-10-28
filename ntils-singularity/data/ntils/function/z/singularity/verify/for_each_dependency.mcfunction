$execute unless data storage ntils:api singularity.data[{id:"$(target)"}] run function ntils:z/singularity/verify/error {id:"$(this)",target:"$(target)",type:'missing_pack'}
$execute if data storage ntils:api singularity.data[{id:"$(target)"}] unless data storage ntils:api singularity.data[{id:"$(target)",enabled:True}] run function ntils:z/singularity/verify/error {id:"$(this)",target:"$(target)",type:'pack_not_loaded'}

$execute store result score #target_version ntils.z.singularity.temp run data get storage ntils:api singularity.data[{id:"$(target)"}].version

scoreboard players set #max_version ntils.z.singularity.temp 2147483647
scoreboard players set #min_version ntils.z.singularity.temp -2147483648

execute if data storage ntils:z singularity.data[0].dependency[0].version.max store result score #max_version ntils.z.singularity.temp run data get storage ntils:z singularity.data[0].dependency[0].version.max
execute if data storage ntils:z singularity.data[0].dependency[0].version.min store result score #min_version ntils.z.singularity.temp run data get storage ntils:z singularity.data[0].dependency[0].version.min

$execute if data storage ntils:api singularity.data[{id:"$(target)"}] if score #target_version ntils.z.singularity.temp < #min_version ntils.z.singularity.temp run function ntils:z/singularity/verify/error {id:"$(this)",target:"$(target)",type:'version_too_low'}
$execute if data storage ntils:api singularity.data[{id:"$(target)"}] if score #target_version ntils.z.singularity.temp > #max_version ntils.z.singularity.temp run function ntils:z/singularity/verify/error {id:"$(this)",target:"$(target)",type:'version_too_high'}

data remove storage ntils:z singularity.data[0].dependency[0]
execute if data storage ntils:z singularity.data[0].dependency[] run data modify storage ntils:z singularity.verify.macro.target set from storage ntils:z singularity.data[0].dependency[0].id
execute if data storage ntils:z singularity.data[0].dependency[] run function ntils:z/singularity/verify/for_each_dependency with storage ntils:z singularity.verify.macro