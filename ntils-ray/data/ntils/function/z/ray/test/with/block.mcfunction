data modify storage ntils:api ray.out set value {pos:[0d,0d,0d],normal:[0d,0d,0d]}

scoreboard players operation #cx ntils.z.ray.temp *= #2^8 ntils.z.const
scoreboard players operation #cy ntils.z.ray.temp *= #2^8 ntils.z.const
scoreboard players operation #cz ntils.z.ray.temp *= #2^8 ntils.z.const

execute store result storage ntils:api ray.out.pos[0] double 0.00390625 run scoreboard players operation #cx ntils.z.ray.temp /= #sx2 ntils.z.ray.temp
execute store result storage ntils:api ray.out.pos[1] double 0.00390625 run scoreboard players operation #cy ntils.z.ray.temp /= #sy2 ntils.z.ray.temp
execute store result storage ntils:api ray.out.pos[2] double 0.00390625 run scoreboard players operation #cz ntils.z.ray.temp /= #sz2 ntils.z.ray.temp

execute if score #dx ntils.z.ray.temp = #sx ntils.z.ray.temp store result storage ntils:api ray.out.normal[0] double -1 run scoreboard players get #svx ntils.z.ray.temp
execute if score #dy ntils.z.ray.temp = #sy ntils.z.ray.temp store result storage ntils:api ray.out.normal[1] double -1 run scoreboard players get #svy ntils.z.ray.temp
execute if score #dz ntils.z.ray.temp = #sz ntils.z.ray.temp store result storage ntils:api ray.out.normal[2] double -1 run scoreboard players get #svz ntils.z.ray.temp

execute align xyz run teleport @s ~ ~ ~
data modify storage ntils:api ray.out.block set from entity @s Pos

function ntils:z/ray/test/disp

teleport @s ~ ~-10000 ~
kill @s
return 1
