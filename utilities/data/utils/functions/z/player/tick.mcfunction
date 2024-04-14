execute unless entity @s[scores={utils.id=1..}] run function utils:z/player/id/check
data modify storage utils:z macro set value {id:0}
execute store result storage utils:z macro.id int 1 run scoreboard players get @s utils.id
item replace block -30000000 0 15000000 container.0 with stone{utils:{z:{impossible:True}}}
execute if predicate utils:api/holding/anything run item replace block -30000000 0 15000000 container.0 from entity @s weapon.mainhand
function utils:z/player/save_mainhand with storage utils:z macro
execute if score #diff utils.temp matches 1 run function #utils:api/item/mainhand_updated