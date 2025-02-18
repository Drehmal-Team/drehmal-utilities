execute unless score $ntils:color.ENABLED ntils.API.singularity.flag matches 1.. run return fail

scoreboard players set #500000 ntils.z.const 500000
scoreboard players set #1000000 ntils.z.const 1000000
scoreboard players set #2000000 ntils.z.const 2000000
scoreboard players set #-2000000 ntils.z.const -2000000
scoreboard players set #2^10*12 ntils.z.const 12288
scoreboard players set #2^10 ntils.z.const 1024
scoreboard players set #-2^10 ntils.z.const -1024
scoreboard players set #-1 ntils.z.const -1
scoreboard players set #3 ntils.z.const 3

scoreboard objectives add ntils.z.color.temp dummy

data modify storage ntils:z color.in set value {hsl:[0,0,0],rgb:[0,0,0],gradient:{start:[0,0,0],end:[0,0,0]}}
data modify storage ntils:z color.out set value {hsl:[0,0,0],rgb:[0,0,0],gradient:[0,0,0]}