data modify storage ntils:z ray.m.x set from storage ntils:api ray.out.pos[0]
data modify storage ntils:z ray.m.y set from storage ntils:api ray.out.pos[1]
data modify storage ntils:z ray.m.z set from storage ntils:api ray.out.pos[2]
execute store result storage ntils:z ray.m.x2 double 0.2 run data get storage ntils:api ray.out.normal[0]
execute store result storage ntils:z ray.m.y2 double 0.2 run data get storage ntils:api ray.out.normal[1]
execute store result storage ntils:z ray.m.z2 double 0.2 run data get storage ntils:api ray.out.normal[2]

execute align xyz run function ntils:z/ray/test/disp_m with storage ntils:z ray.m
return 1