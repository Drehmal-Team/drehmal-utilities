data modify storage utils:z macro set value {uuid:'',id:0}
data modify storage utils:z macro.uuid set from entity @s UUID

tag @s add utils.z.id

data modify storage utils:z players append value {id:-1,data:{}}
data modify storage utils:api players append value {id:-1,data:{}}
execute store result score #ID# utils.global run data get storage utils:z const.id
scoreboard players add #ID# utils.global 1
execute store result score @s utils.API.id store result score #ID# utils.API store result score @s utils.id store result storage utils:z players[-1].id int 1 store result storage utils:api players[-1].id int 1 store result storage utils:z const.id int 1 store result storage utils:z macro.id int 1 run scoreboard players operation #ID# utils.global %= #2^24 utils.const
function #utils:api/player/new_id
function utils:z/player/id/new_macro with storage utils:z macro