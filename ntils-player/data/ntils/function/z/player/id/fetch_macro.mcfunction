$execute if data storage ntils:z player.id.backup."$(out)" store result score @s ntils.z.player.id store result score @s ntils.API.player.id run return run data get storage ntils:z player.id.backup."$(out)"

data modify storage ntils:api player.storage append value {id:-1,data:{},Open:False}
execute store result score #ID# ntils.z.global run data get storage ntils:z player.id.global
scoreboard players add #ID# ntils.z.global 1
$execute store result storage ntils:z player.id.backup."$(out)" int 1 store result score @s ntils.API.player.id store result score #player.id.out ntils.API store result score @s ntils.z.player.id store result storage ntils:api player.storage[-1].id int 1 store result storage ntils:z player.id.global int 1 run scoreboard players operation #ID# ntils.z.global %= #2^24 ntils.z.const
function #ntils:api/player/new_id