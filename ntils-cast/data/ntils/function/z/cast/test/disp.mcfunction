data modify storage ntils:z cast.m.x set from storage ntils:api cast.out.pos[0]
data modify storage ntils:z cast.m.y set from storage ntils:api cast.out.pos[1]
data modify storage ntils:z cast.m.z set from storage ntils:api cast.out.pos[2]
execute store result storage ntils:z cast.m.x2 double 0.2 run data get storage ntils:api cast.out.normal[0]
execute store result storage ntils:z cast.m.y2 double 0.2 run data get storage ntils:api cast.out.normal[1]
execute store result storage ntils:z cast.m.z2 double 0.2 run data get storage ntils:api cast.out.normal[2]

execute align xyz run function ntils:z/cast/test/disp_m with storage ntils:z cast.m
return 1