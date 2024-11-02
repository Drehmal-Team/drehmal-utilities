scoreboard players set #time.FORCING_SYNC# ntils.z.global 1

execute in ntils:z/empty run item replace block 0 5 0 container.0 with air

data modify storage ntils:api string.concat.in set value [0]
execute store result score #0 ntils.z.time.temp store result score #1 ntils.z.time.temp store result score #2 ntils.z.time.temp run scoreboard players add #time.USERNAME_TO_USE# ntils.z.global 1
execute store result storage ntils:z time.force_time_sync.m.0 int 1 run scoreboard players operation #0 ntils.z.time.temp %= #52 ntils.z.const

scoreboard players operation #1 ntils.z.time.temp /= #52 ntils.z.const
execute store result storage ntils:z time.force_time_sync.m.1 int 1 run scoreboard players operation #1 ntils.z.time.temp %= #52 ntils.z.const

scoreboard players operation #2 ntils.z.time.temp /= #2704 ntils.z.const
execute store result storage ntils:z time.force_time_sync.m.2 int 1 run scoreboard players operation #2 ntils.z.time.temp %= #52 ntils.z.const

data modify storage ntils:api string.concat.in set value []
function ntils:z/time/force_time_sync/get_chars with storage ntils:z time.force_time_sync.m
function ntils:api/string/concat

execute in ntils:z/empty run item replace block 0 5 0 container.0 with player_head[profile={}]
execute in ntils:z/empty run data modify block 0 5 0 Items[0].components."minecraft:profile".name set from storage ntils:api string.concat.out

schedule function ntils:z/time/force_time_sync/schedule 1t
