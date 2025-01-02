scoreboard players operation #hitdist ntils.z.ray.temp = #tempdist ntils.z.ray.temp

data modify storage ntils:api ray.out set value {pos:[0d,0d,0d]}

scoreboard players operation #ax ntils.z.ray.temp *= #2^8 ntils.z.const
scoreboard players operation #ay ntils.z.ray.temp *= #2^8 ntils.z.const
scoreboard players operation #az ntils.z.ray.temp *= #2^8 ntils.z.const

execute store result storage ntils:api ray.out.pos[0] double 0.00390625 run scoreboard players operation #ax ntils.z.ray.temp /= #sx2 ntils.z.ray.temp
execute store result storage ntils:api ray.out.pos[1] double 0.00390625 run scoreboard players operation #ay ntils.z.ray.temp /= #sy2 ntils.z.ray.temp
execute store result storage ntils:api ray.out.pos[2] double 0.00390625 run scoreboard players operation #az ntils.z.ray.temp /= #sz2 ntils.z.ray.temp

execute align xyz run teleport @s ~ ~ ~
data modify storage ntils:api ray.out.block set from entity @s Pos

teleport @s ~ ~-10000 ~
kill @s
scoreboard players set #hit ntils.z.ray.temp 1
return 1