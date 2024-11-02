execute unless score $ntils:time.ENABLED ntils.API.singularity.flag matches 1.. run return fail
execute if score #time.FORCING_SYNC# ntils.z.global matches 1.. run return fail
execute unless score #CURRENT_UNIX_TIME# ntils.z.global matches 1.. run return fail

execute store result score #pcount ntils.z.time.temp if entity @a
execute if score #pcount ntils.z.time.temp matches 1 run return run function ntils:z/time/tick/singleplayer
execute if score $ntils:wborder.ENABLED ntils.API.singularity.flag matches 1.. run return run function ntils:z/time/tick/border_sync

scoreboard players add #time.RUNNING_TIMER# ntils.z.global 1
scoreboard players operation #time.RUNNING_TIMER# ntils.z.global %= #20 ntils.z.const

execute if score #gt ntils.z.time.temp matches 0 run function ntils:z/singularity/time/increment

scoreboard players set @a ntils.z.time.total_world_time 0