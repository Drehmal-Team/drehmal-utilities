data modify storage ntils:z fl.list append from storage ntils:z fl.region.temp
execute store result storage ntils:z fl.region.temp.z int 16 run scoreboard players add #z1 ntils.z.fl.temp 1
execute if score #z1 ntils.z.fl.temp <= #z2 ntils.z.fl.temp run function ntils:z/fl/region/l/z