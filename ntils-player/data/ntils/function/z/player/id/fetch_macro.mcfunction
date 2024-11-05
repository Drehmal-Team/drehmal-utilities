$execute if data storage ntils:api player.storage[{z:{uuid:"$(out)"}}] store result score @s ntils.z.player.id store result score @s ntils.API.player.id run return run data get storage ntils:z player.storage[{z:{uuid:"$(out)"}}].z.id

scoreboard players set #player.ID# ntils.z.global 0
data modify storage ntils:z player.id.temp set value []
data modify storage ntils:z player.id.temp set from storage ntils:api player.storage
execute if data storage ntils:z player.id.temp[] run function ntils:z/player/id/get_highest_from_storage

$data modify storage ntils:api player.storage append value {data:{},Open:False,z:{id:-1,uuid:"$(out)"}}
scoreboard players add #player.ID# ntils.z.global 1
execute store result score @s ntils.API.player.id store result score #player.id.out ntils.API store result score @s ntils.z.player.id store result storage ntils:api player.storage[-1].z.id int 1 run scoreboard players operation #player.ID# ntils.z.global %= #2^24 ntils.z.const
function #ntils:api/player/new_id

# CASES:
#
# player id reset but storage exists
# player id reset but storage does not exist
# player id exists but storage does not exist
#
# player id exists and storage exists