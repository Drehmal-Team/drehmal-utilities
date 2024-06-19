tag @s add ntils.item
data modify storage ntils:z macro set value {id:-1}
execute on origin unless items entity @s weapon.mainhand * store result storage ntils:z macro.id int 1 run scoreboard players get @s ntils.id
execute if data storage ntils:z {macro:{id:-1}} run return 0
data modify storage ntils:z tempItem set from entity @s Item
data modify storage ntils:z tempItem.Slot set value 0b
function ntils:z/item/fetch with storage ntils:z macro
execute if score #diff ntils.temp matches 0 run function #ntils:api/item/dropped