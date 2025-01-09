data modify storage ntils:api cast.out set value {pos:[0d,0d,0d],normal:[0d,0d,0d]}

scoreboard players operation #cx ntils.z.cast.temp *= #2^8 ntils.z.const
scoreboard players operation #cy ntils.z.cast.temp *= #2^8 ntils.z.const
scoreboard players operation #cz ntils.z.cast.temp *= #2^8 ntils.z.const

execute store result storage ntils:api cast.out.pos[0] double 0.00390625 run scoreboard players operation #cx ntils.z.cast.temp /= #sx2 ntils.z.cast.temp
execute store result storage ntils:api cast.out.pos[1] double 0.00390625 run scoreboard players operation #cy ntils.z.cast.temp /= #sy2 ntils.z.cast.temp
execute store result storage ntils:api cast.out.pos[2] double 0.00390625 run scoreboard players operation #cz ntils.z.cast.temp /= #sz2 ntils.z.cast.temp

execute if score #dx ntils.z.cast.temp = #sx ntils.z.cast.temp store result storage ntils:api cast.out.normal[0] double -1 run scoreboard players get #svx ntils.z.cast.temp
execute if score #dy ntils.z.cast.temp = #sy ntils.z.cast.temp store result storage ntils:api cast.out.normal[1] double -1 run scoreboard players get #svy ntils.z.cast.temp
execute if score #dz ntils.z.cast.temp = #sz ntils.z.cast.temp store result storage ntils:api cast.out.normal[2] double -1 run scoreboard players get #svz ntils.z.cast.temp

execute align xyz run teleport @s ~ ~ ~
data modify storage ntils:api cast.out.block set from entity @s Pos

function ntils:z/cast/test/disp

teleport @s ~ ~-10000 ~
kill @s
return 1
