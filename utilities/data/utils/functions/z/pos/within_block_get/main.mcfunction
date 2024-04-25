data modify storage utils:z macro set value {x:0,y:0,z:0}

data modify storage utils:z vector set from entity @s Pos

execute store result storage utils:z macro.x int -1 run data get storage utils:z vector[0]
execute store result storage utils:z macro.y int -1 run data get storage utils:z vector[1]
execute store result storage utils:z macro.z int -1 run data get storage utils:z vector[2]

function utils:z/pos/within_block_get/macro with storage utils:z macro

data modify storage utils:api vector set from entity @s Pos
kill @s