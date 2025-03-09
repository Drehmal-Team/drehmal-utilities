execute unless score $ntils:time.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail
execute if score #time.FORCING_SYNC# ntils.z.global matches 1.. run return fail
execute unless score #CURRENT_UNIX_TIME# ntils.z.global matches 1.. run return fail
execute if score $ntils:wborder.ENABLED ntils.API.flag matches 1.. run return fail

execute store result score #pcount ntils.z.time.temp if entity @a
execute if score #pcount ntils.z.time.temp matches 1 run return run execute as @a[scores={ntils.z.time.total_world_time=20..}] run function ntils:z/time/tick/singleplayer/increment

scoreboard players add #time.RUNNING_TIMER# ntils.z.global 1
scoreboard players operation #time.RUNNING_TIMER# ntils.z.global %= #20 ntils.z.const

execute if score #time.RUNNING_TIMER# ntils.z.global matches 0 run scoreboard players add #CURRENT_UNIX_TIME# ntils.z.global 1


scoreboard players set @a ntils.z.time.total_world_time 0