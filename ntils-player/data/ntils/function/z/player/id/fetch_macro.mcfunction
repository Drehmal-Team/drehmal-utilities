$execute if data storage ntils:z player.id.backup."$(out)" store result score @s ntils.z.player.id store result score @s ntils.API.player.id store result storage ntils:z player.id.m.i int 1 run data get storage ntils:z player.id.backup."$(out)"
$execute if data storage ntils:z player.id.backup."$(out)" run return run function ntils:z/player/id/check_for_existing_storage with storage ntils:z player.id.m

scoreboard players set #player.ID# ntils.z.global 0
data modify storage ntils:z player.id.temp set value []
data modify storage ntils:z player.id.temp set from storage ntils:api player.storage
execute if data storage ntils:z player.id.temp[] run function ntils:z/player/id/get_highest_from_storage

data modify storage ntils:api player.storage append value {id:-1,data:{},Open:False}
scoreboard players add #player.ID# ntils.z.global 1
$execute store result storage ntils:z player.id.global int 1 store result storage ntils:z player.id.backup."$(out)" int 1 store result score @s ntils.API.player.id store result score #player.id.out ntils.API store result score @s ntils.z.player.id store result storage ntils:api player.storage[-1].id int 1 run scoreboard players operation #player.ID# ntils.z.global %= #2^24 ntils.z.const
function #ntils:api/player/new_id