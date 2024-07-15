data modify storage ntils:z macro set value {uuid:'',id:0}
data modify storage ntils:z macro.uuid set from entity @s UUID

tag @s add ntils.z.id

data modify storage ntils:z players append value {id:-1,data:{}}
data modify storage ntils:api players append value {id:-1,data:{},Open:False}
execute store result score #ID# ntils.z.global run data get storage ntils:z const.id
scoreboard players add #ID# ntils.z.global 1
execute store result score @s ntils.API.id store result score #ID# ntils.API store result score @s ntils.z.id store result storage ntils:z players[-1].id int 1 store result storage ntils:api players[-1].id int 1 store result storage ntils:z const.id int 1 store result storage ntils:z macro.id int 1 run scoreboard players operation #ID# ntils.z.global %= #2^24 ntils.z.const
function #ntils:api/player/new_id
function ntils:z/player/id/new_macro with storage ntils:z macro