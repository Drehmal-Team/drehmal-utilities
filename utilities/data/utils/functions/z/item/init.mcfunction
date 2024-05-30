tag @s add utils.item
data modify storage utils:z macro set value {id:-1}
execute on origin unless items entity @s weapon.mainhand * store result storage utils:z macro.id int 1 run scoreboard players get @s utils.id
execute if data storage utils:z {macro:{id:-1}} run return 0
data modify storage utils:z tempItem set from entity @s Item
data modify storage utils:z tempItem.Slot set value 0b
function utils:z/item/fetch with storage utils:z macro
execute if score #diff utils.temp matches 0 run function #utils:api/item/dropped