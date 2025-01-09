scoreboard players operation #hitdist ntils.z.cast.temp = #tempdist ntils.z.cast.temp

data modify storage ntils:api cast.out set value {pos:[0d,0d,0d]}

scoreboard players operation #ax ntils.z.cast.temp *= #2^8 ntils.z.const
scoreboard players operation #ay ntils.z.cast.temp *= #2^8 ntils.z.const
scoreboard players operation #az ntils.z.cast.temp *= #2^8 ntils.z.const

execute store result storage ntils:api cast.out.pos[0] double 0.00390625 run scoreboard players operation #ax ntils.z.cast.temp /= #sx2 ntils.z.cast.temp
execute store result storage ntils:api cast.out.pos[1] double 0.00390625 run scoreboard players operation #ay ntils.z.cast.temp /= #sy2 ntils.z.cast.temp
execute store result storage ntils:api cast.out.pos[2] double 0.00390625 run scoreboard players operation #az ntils.z.cast.temp /= #sz2 ntils.z.cast.temp

execute align xyz run teleport @s ~ ~ ~
data modify storage ntils:api cast.out.block set from entity @s Pos

teleport @s ~ ~-10000 ~
kill @s
scoreboard players set #hit ntils.z.cast.temp 1
return 1