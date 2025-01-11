data modify storage ntils:z cast.ray.origin set from entity @s Pos

execute store result storage ntils:z cast.ray.m.x int -1 run data get storage ntils:z cast.ray.origin[0]
execute store result storage ntils:z cast.ray.m.y int -1 run data get storage ntils:z cast.ray.origin[1]
execute store result storage ntils:z cast.ray.m.z int -1 run data get storage ntils:z cast.ray.origin[2]

function ntils:z/cast/ray/get_within with storage ntils:z cast.ray.m
data modify storage ntils:z cast.ray.origin set from entity @s Pos
execute positioned .0 0 .0 run teleport @s ^ ^ ^1
data modify storage ntils:z cast.ray.vector set from entity @s Pos

