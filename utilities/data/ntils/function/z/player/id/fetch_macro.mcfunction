$execute if data storage ntils:z player.id.backup."$(out)" store result score @s ntils.z.id store result score @s ntils.API.id run return run data get storage ntils:z player.id.backup."$(out)"

data modify storage ntils:api players append value {id:-1,data:{},Open:False}
execute store result score #ID# ntils.z.global run data get storage ntils:z const.id
scoreboard players add #ID# ntils.z.global 1
$execute store result storage ntils:z player.id.backup."$(out)" int 1 store result score @s ntils.API.id store result score #ID# ntils.API store result score @s ntils.z.id store result storage ntils:api players[-1].id int 1 store result storage ntils:z const.id int 1 run scoreboard players operation #ID# ntils.z.global %= #2^24 ntils.z.const