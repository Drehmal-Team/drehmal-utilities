execute unless score $ntils:cast.ENABLED ntils.API.singularity.flag matches 1.. run return fail

scoreboard objectives add ntils.z.cast.temp dummy

scoreboard objectives add ntils.z.cast.ray.slow.sx dummy
scoreboard objectives add ntils.z.cast.ray.slow.sy dummy
scoreboard objectives add ntils.z.cast.ray.slow.sz dummy
scoreboard objectives add ntils.z.cast.ray.slow.mx dummy
scoreboard objectives add ntils.z.cast.ray.slow.my dummy
scoreboard objectives add ntils.z.cast.ray.slow.mz dummy
scoreboard objectives add ntils.z.cast.ray.slow.cx dummy
scoreboard objectives add ntils.z.cast.ray.slow.cy dummy
scoreboard objectives add ntils.z.cast.ray.slow.cz dummy
scoreboard objectives add ntils.z.cast.ray.slow.vx dummy
scoreboard objectives add ntils.z.cast.ray.slow.vy dummy
scoreboard objectives add ntils.z.cast.ray.slow.vz dummy
scoreboard objectives add ntils.z.cast.ray.slow.dm dummy
scoreboard objectives add ntils.z.cast.ray.slow.df dummy
scoreboard objectives add ntils.z.cast.ray.slow.ds dummy

scoreboard players set #2^31-1 ntils.z.const 2147483647
scoreboard players set #2^15.5 ntils.z.const 46341
scoreboard players set #2^12 ntils.z.const 4096
scoreboard players set #2^8 ntils.z.const 256
scoreboard players set #16 ntils.z.const 16
scoreboard players set #-1 ntils.z.const -1