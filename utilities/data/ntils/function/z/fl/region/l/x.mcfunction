function ntils:z/fl/region/l/z
execute store result storage ntils:z fl.region.temp.z int 16 run scoreboard players operation #z1 ntils.z.temp = #z1 ntils.z.int
execute store result storage ntils:z fl.region.temp.x int 16 run scoreboard players add #x1 ntils.z.temp 1
execute if score #x1 ntils.z.temp <= #x2 ntils.z.temp run function ntils:z/fl/region/l/x