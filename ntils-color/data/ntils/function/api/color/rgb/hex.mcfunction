return fail
execute unless score $ntils:color.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail

execute store result storage ntils:z color.rgb.hex.m.r int 1 run data get storage ntils:api color.in.rgb[0] 256
execute store result storage ntils:z color.rgb.hex.m.g int 1 run data get storage ntils:api color.in.rgb[1] 256
execute store result storage ntils:z color.rgb.hex.m.b int 1 run data get storage ntils:api color.in.rgb[2] 256
