data modify storage ntils:z macro set value {x:0,y:0,z:0}

data modify storage ntils:z vector set from entity @s Pos

execute store result storage ntils:z macro.x int -1 run data get storage ntils:z vector[0]
execute store result storage ntils:z macro.y int -1 run data get storage ntils:z vector[1]
execute store result storage ntils:z macro.z int -1 run data get storage ntils:z vector[2]

function ntils:z/pos/within_block_get/macro with storage ntils:z macro

data modify storage ntils:api vector set from entity @s Pos
kill @s