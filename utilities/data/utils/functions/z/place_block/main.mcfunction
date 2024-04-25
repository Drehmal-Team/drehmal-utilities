#say offset

#function utils:api/pos/within_block_get

#execute store result score #x utils.temp run data get storage utils:api vector[0] 1000000000
#execute store result score #y utils.temp run data get storage utils:api vector[1] 1000000000
#execute store result score #z utils.temp run data get storage utils:api vector[2] 1000000000

data modify storage utils:z macro set value {x:0,y:0,z:0}

scoreboard players set #hand utils.temp 2
execute if predicate utils:z/holding/placeable store success score #hand utils.temp run item replace block -30000000 0 15000000 container.0 from entity @s weapon.mainhand
execute if score #hand utils.temp matches 2 run item replace block -30000000 0 15000000 container.0 from entity @s weapon.offhand
#data modify storage utils:z macro.id set from block -30000000 0 15000000 Items[0].id

execute if entity @s[advancements={utils:z/place_block/main={x_8=true}}] run data modify storage utils:z macro.x set value 8
execute if entity @s[advancements={utils:z/place_block/main={x_7=true}}] run data modify storage utils:z macro.x set value 7
execute if entity @s[advancements={utils:z/place_block/main={x_6=true}}] run data modify storage utils:z macro.x set value 6
execute if entity @s[advancements={utils:z/place_block/main={x_5=true}}] run data modify storage utils:z macro.x set value 5
execute if entity @s[advancements={utils:z/place_block/main={x_4=true}}] run data modify storage utils:z macro.x set value 4
execute if entity @s[advancements={utils:z/place_block/main={x_3=true}}] run data modify storage utils:z macro.x set value 3
execute if entity @s[advancements={utils:z/place_block/main={x_2=true}}] run data modify storage utils:z macro.x set value 2
execute if entity @s[advancements={utils:z/place_block/main={x_1=true}}] run data modify storage utils:z macro.x set value 1

execute if entity @s[y_rotation=0..180] store result storage utils:z macro.x int -1 run data get storage utils:z macro.x

execute if entity @s[advancements={utils:z/place_block/main={y_8=true}}] run data modify storage utils:z macro.y set value 8
execute if entity @s[advancements={utils:z/place_block/main={y_7=true}}] run data modify storage utils:z macro.y set value 7
execute if entity @s[advancements={utils:z/place_block/main={y_6=true}}] run data modify storage utils:z macro.y set value 6
execute if entity @s[advancements={utils:z/place_block/main={y_5=true}}] run data modify storage utils:z macro.y set value 5
execute if entity @s[advancements={utils:z/place_block/main={y_4=true}}] run data modify storage utils:z macro.y set value 4
execute if entity @s[advancements={utils:z/place_block/main={y_3=true}}] run data modify storage utils:z macro.y set value 3
execute if entity @s[advancements={utils:z/place_block/main={y_2=true}}] run data modify storage utils:z macro.y set value 2
execute if entity @s[advancements={utils:z/place_block/main={y_1=true}}] run data modify storage utils:z macro.y set value 1

execute if entity @s[x_rotation=0..90] store result storage utils:z macro.y int -1 run data get storage utils:z macro.y

execute if entity @s[advancements={utils:z/place_block/main={z_8=true}}] run data modify storage utils:z macro.z set value 8
execute if entity @s[advancements={utils:z/place_block/main={z_7=true}}] run data modify storage utils:z macro.z set value 7
execute if entity @s[advancements={utils:z/place_block/main={z_6=true}}] run data modify storage utils:z macro.z set value 6
execute if entity @s[advancements={utils:z/place_block/main={z_5=true}}] run data modify storage utils:z macro.z set value 5
execute if entity @s[advancements={utils:z/place_block/main={z_4=true}}] run data modify storage utils:z macro.z set value 4
execute if entity @s[advancements={utils:z/place_block/main={z_3=true}}] run data modify storage utils:z macro.z set value 3
execute if entity @s[advancements={utils:z/place_block/main={z_2=true}}] run data modify storage utils:z macro.z set value 2
execute if entity @s[advancements={utils:z/place_block/main={z_1=true}}] run data modify storage utils:z macro.z set value 1

execute unless entity @s[y_rotation=-90..90] store result storage utils:z macro.z int -1 run data get storage utils:z macro.z

execute if entity @s[x_rotation=-90..90]
tellraw @s {"nbt":"macro","storage":"utils:z"}

execute align xyz run function utils:z/place_block/macro with storage utils:z macro

advancement revoke @s only utils:z/place_block/main